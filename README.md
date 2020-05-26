# Solargraph StandardRb

A StandardRb diagnostics reporter for the Solargraph language server.

## Installation

`standardrb` is a wrapper to rubocop with some senible defaults.
To avoid conflict with installed rubocop version, uninstall rubocop.

```ruby
gem uninstall rubocop
```

Add this line to your application's Gemfile:

```ruby
gem 'solargraph-standardrb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install solargraph-standardrb

## Usage

Add solargraph-standardrb to your project's `.solargraph.yml` file:

```
plugins:
- solargraph-standardrb
reporters:
- standardrb
```

