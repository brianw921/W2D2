require_relative "Slideable"
class Rook < Piece
  include Slideable
  
  attr_reader :symbol , :board , :position
  def initialize(board,color,position)
    @symbol = :R
    super
  end

  def move_dir
    return hori_move

  end
  #NEED HORIZONTAL AND VERTICLE CONSTANT FROM SLIDEABLE
end


class Bishop < Piece
  include Slideable
  attr_reader :symbol , :board
  
  def initialize(board,color,position)
    @symbol = :B
    super
  end

  def move_dir
    return diag_mov
  end
  #NEED DIAG
end

class Queen < Piece
  include Slideable
  attr_reader :symbol , :board
  def initialize(board,color,position)
    @symbol = :Q
    super
  end

  def move_dir
    return hori_move + diag_mov
  end
  #ALL of them
end