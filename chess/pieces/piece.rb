

class Piece

  attr_accessor :color, :board, :pos, :symbol

  def initialize(color,board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def opposite_color
    if self.color == :white
      :black
    else
      :white
    end
  end

end
