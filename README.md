# TTY::Live

This is a wrapper for `TTY::Cursor` to help you refresh console.

## Installation

```bash
bundle add tty-live
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install tty-live
```

## Usage

```ruby
require 'tty-live'

live = TTY::Live.new

10.times do
  sky = 10.times.map{100.times.map{rand(100) >= 99 ? '*' : ' '}.join}.join("\n")
  live.update(sky)
  sleep 1
end

puts
```

And you can access `TTY::Cursor`'s methods through `TTY::Live` instance:

```ruby
# same as `print TTY::Cursor.up(5) + TTY::Cursor.forward(2)`
print live.up(5) + live.forward(2)
```

## Development

Follow your heart.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
