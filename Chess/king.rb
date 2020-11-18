require_relative "piece"
require_relative "steppable"

class King < Piece
include Steppable
    def symbol

        @symbol = :KG
    end

    protected

    def move_diffs
        [
            [0, 1],
           [0, -1],
           [-1, 0],
           [1, 0],
           [1, 1],
           [1, -1],
           [-1, -1],
           [-1, 1]
        ]
    end


end


king = King.new(:KG, "board", [2,1])
p king
p king.moves