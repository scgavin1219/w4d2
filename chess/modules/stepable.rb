module Stepable



  #MAY WANT TO MOVE LATER
  def valid_position?(pos)
    x, y = pos
    x <= 7 && x >= 0 && y <= 7 && y >= 0
  end

  def move_dirs
    raise "get it from subclass, silly"
  end

  def moves
    
    move_dirs.inject([]) do |acc, el|
      x, y = self.pos
      dx, dy = el
      new_pos = [x + dx, y + dy]

      if valid_position?(new_pos) && (board[new_pos].color.nil? || board[new_pos].color != self.color)
          acc << new_pos
      else
        acc
      end
    end
  end

end
