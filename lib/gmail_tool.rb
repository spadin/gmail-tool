require 'boson/runner'
require_relative 'gmail_tool/compose/generate_compose_url'

class GmailToolRunner < Boson::Runner
  option :to,      type: :string
  option :subject, type: :string
  option :body,    type: :string
  desc "Open a pre-filled compose message"
  def compose(options)
    @options = options
    open_compose_url
  end

  private

  attr_reader :options

  def open_compose_url
    system "open \"#{compose_url}\""
  end

  def compose_url
    GmailTool::Compose::GenerateComposeUrl.new(options).execute
  end
end
