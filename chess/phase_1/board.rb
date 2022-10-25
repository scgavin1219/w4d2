require_relative "piece"

class Board
    def initialize
        @board = Array.new(8) { Array.new(8) }
        #rook
        @board[0,0] = Piece.new(rook)
        @board[0,7] = Piece.new(rook)
        @board[7,0] = Piece.new(rook)
        @board[7,7] = Piece.new(rook)
        @board[0,2] = Piece.new(bishop)
        @board[0,5] = Piece.new(bishop)
        @board[7,2] = Piece.new(bishop)
        @board[7,5] = Piece.new(bishop)
        @board[0,3] = Piece.new(queen)
        @board[7,4] = Piece.new(queen)
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
        moving_piece = @board[start_pos]
        @board[start_pos] = Piece.new(null)
        @board[end_pos] = moving_piece
    end



end