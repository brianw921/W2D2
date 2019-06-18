module Slideable #USE TO SET THE MOVES FOR QUEEN, BISHOP, ROOK
  HORI = [[1, 0], [-1, 0]]
  VERT = [[0, 1], [0, -1]]
  DIAG = [[1, 1], [-1, -1], [-1, 1], [1, -1]]

  KNIGHT = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [-1, 2], [-1, -2], [1, -2]]
  def moves
    move_dir.map do |array|
     [array[0] + self.position[0] , array[1] + self.position[1]]
    end

  end
  

  def king_move
    return HORI + VERT + DIAG
  end

  def knight_move
    return KNIGHT
  end

   
end