

class Piece
  attr_reader :color
  
  def initialize(board ,color, position)
    @color = color
    @board = board
    @position_arr = position
   end

   def to_s
     "d♚"
   end

   def moves #returns every possible move in the grid
    arr = []
    (0...8).each do |i|
      (0...8).each do |j|
        arr << [i, j]
      end
    end
    arr
   end

  def valid_moves?
    if @board[pos].is_a?(NullPiece) || @board[pos].color != self.color
      return true
    else 
      return false
    end
  end

   
end