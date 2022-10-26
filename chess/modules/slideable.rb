module Slideable

  def horizontal_dirs
    [[0,1], [1,0], [-1,0], [0,-1]]
  end

  def diagonal_dirs
    [[1,1], [1,-1], [-1,-1], [-1, 1]]
  end

  #MAY WANT TO MOVE LATER
  def valid_position?(pos)
    x, y = pos
    x <= 7 && x >= 0 && y <= 7 && y >= 0
  end

  def grow_unblocked_moves_in_dir(dx,dy)
    unblocked_moves = []

    x, y = self.pos
    x += dx
    y += dy
    while valid_position?([x,y]) && (board[[x,y]].color.nil? || board[[x,y]].color != self.color)
      if board[[x,y]].color != self.color && !board[[x,y]].color.nil?
        unblocked_moves << [x,y]
        break
      else
        unblocked_moves << [x,y]
        x += dx
        y += dy
      end
    end
    #
    unblocked_moves
  end

  def moves

  end

end
