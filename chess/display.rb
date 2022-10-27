require_relative 'board'
require_relative 'cursor'
require 'colorize'

class Display

  attr_accessor :board, :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

def render
   @cursor.cursor_pos.colorize( :background => :red)
   #print on a single line the columns
   puts "  " + (0...8).to_a.join(" ")
   #iterate through the rows
   (0...8).each do |row|
     puts "#{row} " + (0...8).to_a.map {|col| board[[row,col]].to_s}.join(" ")
   end
 end
end


#  def render
# (0...8).each do |row|
#   (0...8).each do |col|
#       if @board[row,col] == nil
#           print '_'
#       else
#           print @board[row][col].symbol
#       end
#   end
#   puts
# end
# end
