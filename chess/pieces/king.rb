require_relative "piece"
require_relative "../modules/stepable"

class King < Piece

  def initialize(color, board, pos)
      super
      @symbol = :K

  end



  private

  def move_dirs
      #add diagonal
     moves = [[0,1], [1,0], [-1,0], [0,-1]]
  end
end