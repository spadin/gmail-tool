[![Build Status](https://travis-ci.org/spadin/gmail-tool.svg?branch=master)](https://travis-ci.org/spadin/gmail-tool)

# gmail-tool

## Installation

    $ gem install gmail-tool
    
## Rbenv?

If you use rbenv, you should rehash:

    $ rbenv rehash

## Usage

```
Usage: gmail-tool [OPTIONS] COMMAND [ARGS]

Available commands:
  compose  Open a pre-filled compose message
  help     Displays help for a command

Options:
  -h, --help  Displays this help message
```

    $ gmail-tool compose --to="email@example.com" --subject="subject" --body="some text"

This will call `open` on your system with a url to compose an email on Gmail.
