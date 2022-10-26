require_relative "piece"
require_relative "../modules/slideable"

class Bishop < Piece

  include Slideable

  def initialize(color, board, pos)
      super
      @symbol = :B
  end


  private

  def move_dirs
      #change these to diagonal
     diagonal_dirs
  end
end
