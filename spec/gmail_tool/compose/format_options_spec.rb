require 'gmail_tool/compose/format_options'

describe GmailTool::Compose::FormatOptions do
  def gmail_format_params(options)
    described_class.new(options).execute
  end

  describe '#to_gmail_format' do
    it 'changes subject key to su key' do
      expect(gmail_format_params(subject: 'subject')).to eql(su: 'subject')
    end

    it 'keeps keys that are not mapped to something else' do
      expect(gmail_format_params(body: 'body')).to eql(body: 'body')
    end
  end
end
