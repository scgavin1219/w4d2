require_relative "piece"

class Pawn < Piece

  def initialize(color, board, pos)
      super
      @symbol = :pawn

  end



  private

  def move_dirs
      #add diagonal
     moves = [[1,0],[2,0]]
  end
end
