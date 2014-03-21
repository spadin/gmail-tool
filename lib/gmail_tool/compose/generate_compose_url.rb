require 'open-uri'
require_relative 'format_params'

module GmailTool
  module Compose
    class GenerateComposeUrl
      def initialize(options={}, params_formatter=nil)
        @options = default_options.merge(options)
        @params_formatter = params_formatter || FormatParams
      end

      def execute
        base_compose_url + query_params
      end

      private

      attr_reader :options, :params_formatter

      def query_params
        encoded_query_string(gmail_formatted_options)
      end

      def gmail_formatted_options
        params_formatter.new(options).execute
      end

      def encoded_query_string(options)
        URI.encode_www_form(options)
      end

      def default_options
        {view: 'cm'}
      end

      def base_compose_url
        "https://mail.google.com/mail?"
      end
    end
  end
end
