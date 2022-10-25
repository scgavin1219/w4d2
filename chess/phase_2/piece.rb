require_relative 'Rook'
require_relative 'Bishop'
require_relative 'Pawn'
require_relative 'Knight'
require_relative 'King'
require_relative 'Queen'
require_relative 'NullPiece'
require_relative 'Board'

class Piece

  attr_reader :color, :board, :pos

  def initialize(color,board, pos)
    @color = color
    @board = board
    @pos = pos
  end


end
