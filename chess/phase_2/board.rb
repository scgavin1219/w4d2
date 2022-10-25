require_relative 'chess'

class Board
    def initialize
        @board = Array.new(8) { Array.new(8, nil) }
        #rook
        #color, board, position
        @board[0][0] = Rook.new(:black, self, [0,0])
        @board[0][7] = Rook.new(:black, self, [0,7])
        @board[7][0] = Rook.new(:white, self, [7,0])
        @board[7][7] = Rook.new(:white, self, [7,7])
        @board[0][2] = Bishop.new(:black, self, [0,2])
        @board[0][5] = Bishop.new(:black, self, [0,5])
        @board[7][2] = Bishop.new(:white, self, [7,2])
        @board[7][5] = Bishop.new(:white, self, [7,5])
        @board[0][3] = Queen.new(:black, self, [0,3])
        @board[7][4] = Queen.new(:white, self, [7,4])
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

    def render
        (0...8).each do |row|
            (0...8).each do |col|
                if @board[row][col] == nil
                    print '_'
                else
                    print @board[row][col].symbol
                end
            end
            puts
        end
    end



end
