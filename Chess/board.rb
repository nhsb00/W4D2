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
        @rows = Array.new(8) {Array.new(8, NullPiece.instance)}
        
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
                    @rows[i][j] = King.new(symbol, self, [i,j])  if j == 3
                    @rows[i][j] = Queen.new(symbol, self, [i,j])  if j == 4


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
                    @rows[i][j] = King.new(symbol, self, [i,j])  if j == 4
                    @rows[i][j] = Queen.new(symbol, self, [i,j])  if j == 3

                end
            end

    end
    end

    def print_board

        print "  0  1  2  3  4  5  6  7\n"

        @rows.each_with_index do |row, i|
            print i
            row.each_with_index do |col, j|
                
                print " #{col.symbol}"
            end
            print "\n"
        end
    end

end

board = Board.new
board.set_pieces
board.print_board