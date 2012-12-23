module Bacon
  module ColoredOutput
    include SpecDoxOutput

    def handle_requirement(description)
      print spaces

      error = yield

      print error.empty? ? color("\e[32m") : color("\e[1;31m")
      print "  - #{description}"
      puts error.empty? ? color("\e[0m") : " [#{error}]#{color("\e[0m")}"
    end

    def color(escape_seq)
      if $stdout.respond_to?(:tty?) && $stdout.tty?
        escape_seq
      end
    end
  end

  extend ColoredOutput
end