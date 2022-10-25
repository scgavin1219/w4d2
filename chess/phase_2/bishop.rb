require_relative "piece"
require_relative "slideable"

class Bishop < Piece

  def initialize(color, board, pos)
      super
      @symbol = :bishop

  end

  include Slideable

  private

  def move_dirs
      #change these to diagonal
     moves = [[0,1], [1,0], [-1,0], [0,-1]]
  end
end
