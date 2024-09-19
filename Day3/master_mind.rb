class MasterMind
  def initialize
    @colors = %w[red blue green yellow orange purple]
    @colors_to_guess = Array.new(4) { @colors.sample }
    @attempts = 2
  end

  def start
    @attempts.times do |remaining_attempts|
      puts "#{@attempts - remaining_attempts} attempts left"
      user_guess = request_guess
      result = check(user_guess)

      puts "Feedback: #{result[:correct]} correct, #{result[:incorrect]} in the wrong position"

      if result[:correct] == 4
        puts "You cracked the code: #{@colors_to_guess.join(' ')}"
        return
      end
    end

    puts "No more attempts! The code was: #{@colors_to_guess.join(' ')}"
  end

  def request_guess
    loop do
      puts "Enter your guess (4 colors):"
      guess_input = gets.chomp.split
      return guess_input if valid_input?(guess_input)

      puts "Invalid guess. Try again."
    end
  end

  def valid_input?(input)
    input.length == 4 && input.all? { |color| @colors.include?(color) }
  end

  def check(guess_input)
    correct_count = guess_input.each_index.count { |i| guess_input[i] == @colors_to_guess[i] }
    incorrect_count = (guess_input & @colors_to_guess).size - correct_count
    { correct: correct_count, incorrect: incorrect_count }
  end
end

game_instance = MasterMind.new
game_instance.start
