require "singleton"
class NullPiece < Piece

    include Singleton
    attr_reader :val
    def initialize(val = "NULL")
        @val = val
    end 

    def moves 

    end

    def symbol

    end


end