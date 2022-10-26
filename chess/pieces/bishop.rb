require_relative "piece"
require_relative "../modules/slideable"

class Bishop < Piece

  def initialize(color, board, pos)
      super
      @symbol = :B

  end



  private

  def move_dirs
      #change these to diagonal
     moves = [[0,1], [1,0], [-1,0], [0,-1]]
  end
end
