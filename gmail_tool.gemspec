lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'gmail_tool/version'

Gem::Specification.new do |s|
  s.name        = "gmail-tool"
  s.version     = GmailTool::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sandro Padin"]
  s.email       = ["sandropadin@gmail.com"]
  s.homepage    = "http://github.com/spadin/gmail-tool"
  s.summary     = "Simple way to open a Gmail compose browser window"
  s.description = "A simple way to open a Gmail compose browser window"
  s.licenses    = ['Apache License, Version 2.0']

  s.required_rubygems_version = ">= 1.3.6"

  s.add_development_dependency "rspec", "~>2"
  s.add_dependency "boson", "~>1.3"

  s.files        = Dir.glob("{bin,lib}/**/*") + %w(LICENSE)
  s.executables  = ['gmail-tool']
  s.require_path = 'lib'
end
