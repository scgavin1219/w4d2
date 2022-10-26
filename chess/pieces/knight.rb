require_relative "piece"
require_relative "../modules/stepable"

class Knight < Piece
  include Stepable
  def initialize(color, board, pos)
      super
      @symbol = :N

  end



  private

  def move_dirs
     moves = [[2, 1], [2, -1], [1, 2], [1,-2], [-2, 1], [-2, -1], [-1, 2], [-1, -2]]
  end
end
