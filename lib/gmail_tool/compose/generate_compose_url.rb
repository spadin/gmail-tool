require 'open-uri'
require_relative 'format_options'

module GmailTool
  module Compose
    class GenerateComposeUrl
      def initialize(options={})
        @options = default_options.merge(options)
      end

      def execute
        base_compose_url + query_params
      end

      private

      attr_reader :options

      def query_params
        encoded_query_string(formatted_options)
      end

      def formatted_options
        FormatOptions.new(options).execute
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
