require_relative "piece"
require_relative "../modules/slideable"

class Queen < Piece

  def initialize(color, board, pos)
      super
      @symbol = :Q

  end



  private

  def move_dirs
      #add diagonal
     moves = [[0,1], [1,0], [-1,0], [0,-1]]
  end
end
