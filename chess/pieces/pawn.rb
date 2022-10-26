require_relative "piece"

class Pawn < Piece

  def initialize(color, board, pos)
      super
      @symbol = :p
  end

  def valid_position?(pos)
    x, y = pos
    x <= 7 && x >= 0 && y <= 7 && y >= 0
  end



  def moves
    legal_moves = []
    x,y = self.pos

    steps = forward_steps
    steps.each do |ele|
      dx, dy = ele
      dx *= -1 if self.color == :white
      new_pos = [x + dx, y + dy]
      if valid_position?(new_pos) && board[new_pos].color.nil?
        legal_moves << new_pos
      elsif !at_start_row?
        break
      else
        break
      end
    end

    side_attacks.each do |ele|
      dx, dy = ele
      dx *= -1 if self.color == :white
      new_pos = [x + dx, y + dy]
      if valid_position?(new_pos) && !board[new_pos].color.nil? && board[new_pos].opposite_color
        legal_moves << new_pos
      end
    end

    legal_moves
  end


  private

  def forward_steps
    [[1,0], [2,0]]
  end

  def side_attacks
    [[1,1], [1,-1]]
  end

  def forward_dir
    if self.color == :black
      -1
    else
      1
    end
  end

  def at_start_row?
    if self.color == :black && self.pos[0] == 1
      true
    elsif self.color == :white && self.pos[0] == 7
      true
    else
      false
    end
  end

end
