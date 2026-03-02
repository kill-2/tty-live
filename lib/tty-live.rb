require 'tty-cursor'

module TTY
  class Live
    VERSION = "0.1.0"

    def initialize
      @line_count = 0
    end

    def update(str)
      print Cursor.clear_lines(@line_count + 1)
      @line_count = str.count("\n")
      print str
    end
  end
end