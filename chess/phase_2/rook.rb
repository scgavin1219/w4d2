require_relative "piece"
require_relative "slideable"


class Rook < Piece

    def initialize(color, board, pos)
        super
        @symbol = :R

    end



    private

    def move_dirs
        #will really want these horizatonal moves to go into slideable
       moves = [[0,1], [1,0], [-1,0], [0,-1]]
    end
end
