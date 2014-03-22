require 'gmail_tool/compose/generate_compose_url'

describe GmailTool::Compose::GenerateComposeUrl do
  describe '#compose_url' do
    def compose_url(options={})
      described_class.new(options).execute
    end

    it 'returns a default compose url' do
      expect(compose_url).to eql('https://mail.google.com/mail?view=cm')
    end

    it 'returns a compose url with the url-encoded options' do
      options              = {body: 'hello world!'}
      encoded_query_string = URI::encode_www_form(options)

      expect(compose_url(options)).to eql("https://mail.google.com/mail?view=cm&#{encoded_query_string}")
    end

    it 'transforms keys to keys expected by gmail' do
      expect(compose_url(subject: 'subject')).to eql("https://mail.google.com/mail?view=cm&su=subject")
    end
  end
end
