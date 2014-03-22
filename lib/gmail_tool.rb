require 'boson/runner'
require_relative 'gmail_tool/compose/task'

class GmailToolRunner < Boson::Runner
  option :to,      type: :string
  option :subject, type: :string
  option :body,    type: :string
  desc "Open a pre-filled compose message"
  def compose(options)
    GmailTool::Compose::Task.new(options).execute
  end
end
