module Slideable #USE TO SET THE MOVES FOR QUEEN, BISHOP, ROOK
  HORI = [[1, 0], [-1, 0]]
  VERT = [[0, 1], [0, -1]]
  DIAG = [[1, 1], [-1, -1], [-1, 1], [1, -1]]

  def moves
    move_dir.map do |array|
     [array[0] + self.position[0] , array[1] + self.position[1]]
    end

  end
  

  def hori_move
    return HORI + VERT
  end


  def diag_mov
    return DIAG
  end
   
end