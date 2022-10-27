require_relative 'chess'


class Board
    def initialize
        @board = Array.new(8) { Array.new(8, nil) }
         #MAKING NULL PIECES, AND PLAYING CODE GOLF
        64.times do |idx|
            row, col = (idx / 8), (idx % 8)
            @board[row][col] = NullPiece.new
        end
        populate

    end

    def populate
        #ROOKS
        @board[0][0] = Rook.new(:black, self, [0,0])
        @board[0][7] = Rook.new(:black, self, [0,7])
        @board[7][0] = Rook.new(:white, self, [7,0])
        @board[7][7] = Rook.new(:white, self, [7,7])

        #BISHOPS
        @board[0][2] = Bishop.new(:black, self, [0,2])
        @board[0][5] = Bishop.new(:black, self, [0,5])
        @board[7][2] = Bishop.new(:white, self, [7,2])
        @board[7][5] = Bishop.new(:white, self, [7,5])

         #KNIGHTS
         @board[0][6] = Knight.new(:black, self, [0,6])
         @board[0][1] = Knight.new(:black, self, [0,1])
         @board[7][6] = Knight.new(:white, self, [7,6])
         @board[7][1] = Knight.new(:white, self, [7,1])

        #QUEENS
        @board[0][3] = Queen.new(:black, self, [0,3])
        @board[7][4] = Queen.new(:white, self, [7,4])

         #KINGS
         @board[0][4] = King.new(:black, self, [0,4])
         @board[7][3] = King.new(:white, self, [7,3])



        #PAWNS
        8.times do |idx|
            @board[1][idx] = Pawn.new(:black, self, [1,idx])
        end

        8.times do |idx|
            @board[6][idx] = Pawn.new(:white, self, [6,idx])
        end


    end

    def render
        # @cursor.cursor_pos.colorize( :background => :red)
        #print on a single line the columns
        puts "  " + (0...8).to_a.join(" ")
        #iterate through the rows
        (0...8).each do |row|
          puts "#{row} " + (0...8).to_a.map {|col| @board[[row,col]].to_s}.join(" ")
        end
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
