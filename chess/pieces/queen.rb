require_relative "piece"
require_relative "../modules/slideable"

class Queen < Piece
  include Slideable
  def initialize(color, board, pos)
      super
      @symbol = :Q

  end



  private

  def move_dirs
      #add diagonal
     diagonal_dirs + horizontal_dirs
  end
end
