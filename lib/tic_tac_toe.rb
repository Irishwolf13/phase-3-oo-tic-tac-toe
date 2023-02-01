require 'pry'
class TicTacToe

    def initialize
        @board = ["","","","","","","","","",]
    end

    WIN_COMBINATIONS = [
        # Horizontal
        [0,1,2],
        [3,4,5],
        [6,7,8],
        # Vertical
        [0,3,6],
        [1,4,7],
        [2,5,8],
        # Diagonal
        [0,4,8],
        [2,4,6]
    ]
    def display_board
        pp @board[0..2]
        pp @board[3..5]
        pp @board[6..8]
    end

    def input_to_index(mark = gets.chomp)
        (mark.to_i)-1
    end

    def move(index, player="X")
        @board[index] = player
    end

    def position_taken?(index)
        if(@board[index] == "")
            false
        else
            true
        end
    end

    def valid_move?(position)
        if(position == true)
            true
        else
            false
        end
    end

    def turn_count
        count = 0
        @board.each do |i|
            p 'iran'
            if i != ""
                count += 1
            end
        end
        count
    end

    def current_player
        if turn_count().even? == true
            "X"
        else
            "O"
        end
    end

    def turn
        puts "Select position 1 through 9."
        # This is where you left off John.
    end
end

binding.pry
