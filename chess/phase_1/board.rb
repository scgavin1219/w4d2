#require_relative "piece"
require_relative 'chess'

class Board
    def initialize
        @board = Array.new(8) { Array.new(8, nil) }
        #rook
        @board[0][0] = Piece.new(:rook)
        @board[0][7] = Piece.new(:rook)
        @board[7][0] = Piece.new(:rook)
        @board[7][7] = Piece.new(:rook)
        @board[0][2] = Piece.new(:bishop)
        @board[0][5] = Piece.new(:bishop)
        @board[7][2] = Piece.new(:bishop)
        @board[7][5] = Piece.new(:bishop)
        @board[0][3] = Piece.new(:queen)
        @board[7][4] = Piece.new(:queen)
    end

    def[](pos)
        x, y = pos
        @board[x][y]
    end

    def[]=(pos,val)
        x, y = pos
        @board[x][y] = val
    end

    def move_piece(color, start_pos, end_pos)
        moving_piece = self[start_pos]
        if moving_piece.nil?
            raise 'No piece!'
        else
            self[start_pos] = Piece.new(nil)
            self[end_pos] = moving_piece
        end
    end



end
