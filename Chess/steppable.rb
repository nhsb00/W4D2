module Steppable

    def moves
        moves = []
        move_diffs.each do |x1, y1|
            x,y = pos

            pos = [x+x1, y+y1]
            moves << pos
        end
        moves
    end

    private

    def move_diffs

        # diffs = []
        # row = pos[0]
        # col = pos[1]

        # diffs << [row+2, col+1] 
        # diffs << [row + 1,col + 2]
        # diffs << [row - 2,col -1]
        # diffs << [row - 1,col - 2 ]
        # diffs << [row + 2,col - 1]
        # diffs << [row + 1,col - 2]
        # diffs << [row - 2,col + 1]
        # diffs << [row - 1,col + 2]
    end




end