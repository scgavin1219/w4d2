require_relative "piece"
require_relative "../modules/slideable"


class Rook < Piece

    include Slideable

    def initialize(color, board, pos)
        super
        @symbol = :R
    end



    private

    def move_dirs
       horizontal_dirs
    end
end
