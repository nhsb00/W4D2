require_relative "slideable"

class Rook < Piece
include Slideable
    def symbol
        @symbol = :RO
    end

    private
    
    def move_dirs
        horizontal_dirs
    end


end