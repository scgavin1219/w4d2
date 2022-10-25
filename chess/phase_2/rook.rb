require_relative "piece"
require_relative "slideable"


class Rook < Piece
include Slideable

    private

    def move_dirs
       moves = [[0,1], [1,0], [-1,0], [0,-1]] 
    end
end