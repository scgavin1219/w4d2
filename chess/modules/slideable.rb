module Slideable

  attr_reader :HOIRZONTAL_DIRS, :DIAGONAL_DIRS

  HORIZONTAL_DIRS = [[0,1], [1,0], [-1,0], [0,-1]]
  DIAGONAL_DIRS = [[1,1], [1,-1], [-1,-1], [-1, 1]]

  def grow_unblocked_moves_in_dir(dx,dy)
    root = self.pos
    unblocked_moves = []
    x, y = root
    x += dx
    y += dy
    until x > 7 || x < 0 || y > 7 || y < 0
      unblocked_moves << [x,y]
      x += dx
      y += dy
    end
    unblocked_moves
  end

end
