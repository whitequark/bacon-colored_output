module Bacon
  module ColoredOutput
    def handle_requirement(*args)
      error = yield

      print error.empty? ? color("\e[32m") : color("\e[1;31m")
      super(*args) { error }
      print color("\e[0m")
    end

    def color(escape_seq)
      if $stdout.respond_to?(:tty?) && $stdout.tty?
        escape_seq
      else
        ""
      end
    end
  end

  extend ColoredOutput
end