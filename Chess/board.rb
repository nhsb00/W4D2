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
        @null_piece = NullPiece.instance
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

    def move_piece(start_pos, end_pos)

        position_numbers = start_pos + end_pos
        raise "start and end position cannot be the same" if start_pos == end_pos
        raise "Start position/End position is empty."  if start_pos.empty? || end_pos.empty?

        raise "Out of bounds." if !valid_pos?(start_pos) || !valid_pos?(end_pos)

       users_piece = @rows[start_pos[0]][start_pos[1]]

       raise "Pick another start piece." if users_piece == NullPiece.instance

       @rows[start_pos[0]][start_pos[1]] = NullPiece.instance
       @rows[end_pos[0]][end_pos[1]] = users_piece

    end

    def valid_pos?(pos)

    pos.all? {|ele| ele <= 7 && ele >= 0 }

    end

    def print_board

        print "   0   1   2   3   4   5   6   7\n"

        @rows.each_with_index do |row, i|  #puts row.join
            puts "#{i} #{row.join(" ")}"
            # row.each_with_index do |col, j|
                
            #     print " #{col.symbol}"
            # end
            # print "\n"
        end
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end

end

board = Board.new
board.set_pieces
# board.move_piece([6,0],[4,0])
# board.print_board
board.move_piece([6,0],[4,0])
board.print_board

p Knight.move_diffs
