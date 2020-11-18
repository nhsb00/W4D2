require "singleton"
class NullPiece < Piece

    include Singleton
    attr_reader :symbol
    def initialize
        @symbol = :NN
    end 

    def moves 

    end


end