require_relative 'generate_compose_url'

module GmailTool
  module Compose
    class Task
      def initialize(options)
        @options = options
      end

      def execute
        open_compose_url
      end

      private

      attr_reader :options

      def open_compose_url
        `open "#{compose_url}"`
      end

      def compose_url
        GmailTool::Compose::GenerateComposeUrl.new(options).execute
      end
    end
  end
end
