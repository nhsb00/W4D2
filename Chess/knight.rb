require_relative "steppable"
require_relative "piece"

class Knight < Piece
include Steppable
    def symbol

        @symbol = :KN
    end

    protected

    def move_diffs
       [
        [2, 1],
       [2, -1],
       [-2, -1],
       [-2, 1],
       [1, 2],
       [1, -2],
       [-1, -2],
       [-1, 2]
    ]
    end



end

# knight = Knight.new(:KN, "board", [2,1])
# p knight
# p knight.moves