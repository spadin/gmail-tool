require 'gmail_tool/compose/task'

describe GmailTool::Compose::Task do
  class MockedGenerateComposeUrl
    def initialize(options);end

    def execute
      "mocked"
    end
  end

  let(:subject) {described_class.new({}, MockedGenerateComposeUrl)}

  it 'makes a system call and tries to open generated url' do
    subject.should_receive(:'`').with('open "mocked"')
    subject.execute
  end
end
