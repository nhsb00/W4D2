class Piece

    attr_reader :color, :pos
    attr_writer :pos
    def initialize (color, board, pos)
        @color = color
        @board = board
        @pos = pos

    end

    def to_s
            "#{symbol} "
    end

    def empty?

    end

    def valid_moves

    end

    def pos=(val)

    end

    def Symbol

    end

    private

    def move_into_check?(end_pod)

    end



end