require_relative 'generate_compose_url'

module GmailTool
  module Compose
    class Task
      def initialize(options={}, url_generator=nil)
        @options = options
        @url_generator = url_generator || GmailTool::Compose::GenerateComposeUrl
      end

      def execute
        open_compose_url
      end

      private

      attr_reader :options, :url_generator

      def open_compose_url
        `open "#{compose_url}"`
      end

      def compose_url
        url_generator.new(options).execute
      end
    end
  end
end
