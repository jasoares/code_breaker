module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret
      @output.puts 'Welcome to CodeBreaker!'
      @output.puts 'Enter a guess:'
    end

    def guess(guess)
      quit if guess == 'quit'
      marker = Marker.new(@secret, guess)
      @output.puts '+'*marker.exact_match_count + '-'*marker.number_match_count
    end

    def quit
      @output.puts "The code was #{@secret}"
      @output.puts "Thanks for playing!"
    end
  end
end
