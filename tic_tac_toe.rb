class TicTacToe
  @@turns = 0

  def initialize
    @board = Array.new(3) {Array.new(3, " ")}
    @curr_player = 'X'
  end

  def play
    until win? || full?
      display_board
      puts "Player #{@curr_player} enter your position in row(0 to 2) and column(0 to 2) :"
      row = gets.chomp.to_i
      col = gets.chomp.to_i
      if valid_move?(row, col)
        make_move(row, col)
        @@turns += 1
        switch_player
      else
        puts "Invalid move"
      end
    end

    display_board
    if win?
      puts "Player #{@curr_player == 'X' ? 'O' : 'X'} is the winner"
    else
      puts "Its a draw"
    end
  end

  def display_board
    @board.each do |row|
      puts "| #{row.join(" | ")} |"
      puts "-------------"
    end
  end

  def valid_move?(row, col)
    (@board[row][col] == " ") && (row >=0 && row <=2) && (col >=0 && col <=2)
  end

  def make_move(row, col)
    @board[row][col] = @curr_player
  end

  def switch_player
    @curr_player = (@curr_player == 'X' ? 'O' : 'X')
  end

  def win?
    if @board[0][0] == @board[0][1] && @board[0][1] == @board[0][2] && @board[0][0] != ' '
      return true
    elsif @board[1][0] == @board[1][1] && @board[1][1] == @board[1][2] && @board[1][0] != ' '
      return true
    elsif @board[2][0] == @board[2][1] && @board[2][1] == @board[2][2] && @board[2][0] != ' '
      return true
    end

    if @board[0][0] == @board[1][0] && @board[1][0] == @board[2][0] && @board[0][0] != ' '
      return true
    elsif @board[0][1] == @board[1][1] && @board[1][1] == @board[2][1] && @board[0][1] != ' '
      return true
    elsif @board[0][2] == @board[1][2] && @board[1][2] == @board[2][2] && @board[0][2] != ' '
      return true
    end

    if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] && @board[1][1] != ' '
      return true
    elsif @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] && @board[1][1] != ' '
      return true
    end
    return false
  end

  def full?
    @@turns == 9
  end

end

game = TicTacToe.new
game.play

