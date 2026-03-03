require 'tty-cursor'

module TTY
  class Live
    VERSION = "0.1.1"

    def initialize
      @line_count = 0
    end

    def update(str)
      print Cursor.clear_lines(@line_count + 1)
      @line_count = str.count("\n")
      print str
    end

    Cursor.methods(false).each do |m|
      define_method(m) do |*args|
        Cursor.send(m, *args)
      end
    end
  end
end