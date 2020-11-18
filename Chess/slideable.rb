module Slideable

    HORIZONTAL_DIRS = [
    [-1, 0], # left
    [0, -1], # right
    [ 0, 1], # up (vertical)
    [ 1, 0]  # down (vertical)
  ].freeze
  # .freeze will cause an object to become non-mutatable 

  # DIAGONAL_DIRS stores an array of diagonal directions
  DIAGONAL_DIRS = [
    [-1, 1], # up + left
    [1, 1], # up + right
    [-1, -1], # down + left
    [ 1, -1]  # down + right
  ].freeze


  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    moves =[]
        move_dirs.each do |x1, y1|



        end
  end

  private 

  def move_dirs

    raise NotImplementedError 

  end

  def grow_unblocked_moves_in_dir(dx, dy)
        x,y = pos
        moves = []
        move_dirs.each do |x1,y1|

            pos = [x+x1, y+y1]
            moves << pos
        end
        return moves
  end
  





end