class TicTacToe
    
    def initialize
        @board = Array.new(3){Array.new(3," ")}
        
    end

    def play
        puts "Welcome!!!"
        puts "Player 1 : X"
        puts "Player 2 : O"
        until validate
            @curr_player = 'X'
            display
            puts "Player 1 turn"
            puts "Available Positions : #{avail_pos}"
            player1 = player_input
            mark(player1,'X')
            break if validate || draw
            @curr_player = 'O'
            display
            puts "Player 2 turn"
            puts "Available Positions : #{avail_pos}"
            player2 = player_input
            mark(player2,'O')
            
        end
        display

        unless validate
            puts "Its a draw"
        else
            puts @curr_player == 'X' ? "Player 1 wins" : "Player 2 wins" 
        end

        puts "Game ends"
        


    end

    def validate

        (0..2).each do |i|
            return true if @board[i].all? { |col| col == 'X' } || @board[i].all? { |col| col == 'O' }
            return true if @board.all? { |row| row[i] == 'X' } || @board.all? { |row| row[i] == 'O' }
        end

        return true if [@board[0][0], @board[1][1], @board[2][2]].uniq.length == 1 && @board[1][1] != ' '
        return true if [@board[0][2], @board[1][1], @board[2][0]].uniq.length == 1 && @board[1][1] != ' '

        false 

    end

    def player_input
        pos = gets.chomp.to_i
        until avail_pos.include?(pos)
            puts "*Enter only availabe positions."
            pos = gets.chomp.to_i
        end
        pos

    end

    def draw
        avail_pos.empty?
    end

    def mark(pos,char)
        row = (pos - 1) / 3
        col = (pos - 1) % 3
        @board[row][col] = char
    end

    def avail_pos
        result = []
        @board.each_with_index do |row, row_index|
            row.each_with_index do |col, col_index|
                if @board[row_index][col_index] == " "
                pos = row_index * 3 + col_index + 1
                result << pos
                end
            end
        end
        result
    end
    
    def display
         puts "---+--+--+"
        @board.each do |row|
            print "| "
            row.each {|col| print col+"| "}
            puts "\n---+--+--+"
        end        
    end
    
end

game = TicTacToe.new
game.play
