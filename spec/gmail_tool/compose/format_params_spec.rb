require 'gmail_tool/compose/format_params'

describe GmailTool::Compose::FormatParams do
  def gmail_format_params(options)
    described_class.new(options).execute
  end

  describe '#to_gmail_format' do
    it 'changes subject key to su key' do
      options = {subject: 'subject'}
      expect(gmail_format_params(options)).to eql(su: 'subject')
    end

    it 'ignores keeps keys that are not mapped to something else' do
      options = {body: 'body'}
      expect(gmail_format_params(options)).to eql(options)
    end
  end
end
