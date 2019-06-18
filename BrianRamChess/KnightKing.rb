require_relative "Stepable"

class King < Piece
  include Stepable
  
  attr_reader :symbol , :board , :position
  def initialize(board,color,position)
    @symbol = :K
    super
  end

  def move_dir
    return king_move

  end
end

class Knight < Piece
  include Stepable
  
  attr_reader :symbol , :board , :position
  def initialize(board,color,position)
    @symbol = :G
    super
  end

  def move_dir
    return knight_move

  end
end