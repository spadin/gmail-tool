module GmailTool
  module Compose
    class FormatParams
      def initialize(options)
        @options = options
      end

      def execute
        Hash[gmail_formatted_options]
      end

      private

      attr_reader :options

      def mappings
        {subject: :su}
      end

      def gmail_formatted_options
        options.map do |key, value|
          if mappings[key]
            [mappings[key], value]
          else
            [key, value]
          end
        end
      end
    end
  end
end
