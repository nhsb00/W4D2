require_relative "piece"
require_relative "bishop"
require_relative "null_piece"
require_relative "rook"
require_relative "knight"
require_relative "king"
require_relative "queen"
require_relative "pawn"

class Board

    
    def initialize 
        @rows = Array.new(8) {Array.new(8, NullPiece.instance.val)}
        
    end

    def set_pieces

        @rows.each_with_index do |row, i|
            symbol = :W
            if i == 1 #|| i == 6
                symbol = :B
                row.each_with_index do |place, j|
                    @rows[i][j] = Pawn.new(symbol, self, [i,j])  
                end
            elsif i == 0 #|| i == 7
                symbol = :B
                row.each_with_index do |place, j|
                    @rows[i][j] = Rook.new(symbol, self, [i,j])  if j == 0 || j == 7
                    @rows[i][j] = Knight.new(symbol, self, [i,j])  if j == 1 || j == 6
                    @rows[i][j] = Bishop.new(symbol, self, [i,j])  if j == 2 || j == 5
                end
            elsif i == 6
                row.each_with_index do |place, j|
                    @rows[i][j] = Pawn.new(symbol, self, [i,j])  
                end
            elsif i == 7
                row.each_with_index do |place, j|
                    @rows[i][j] = Rook.new(symbol, self, [i,j])  if j == 0 || j == 7
                    @rows[i][j] = Knight.new(symbol, self, [i,j])  if j == 1 || j == 6
                    @rows[i][j] = Bishop.new(symbol, self, [i,j])  if j == 2 || j == 5
                end
            end

    end
# @rows[0][0] = Pawn.new(:B, self, [0,0])
    end






end