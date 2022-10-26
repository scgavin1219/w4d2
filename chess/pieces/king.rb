require_relative "piece"
require_relative "../modules/stepable"

class King < Piece
  include Stepable
  def initialize(color, board, pos)
      super
      @symbol = :K

  end



  private

  def move_dirs
     moves = [[0, 1], [1, 0], [-1, 0], [0, -1], [1, 1], [1, -1], [-1,-1], [-1, 1]]
  end
end
