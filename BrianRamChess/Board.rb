require_relative "null_piece"
require_relative "Piece"
require_relative "RBQ"
require "byebug"

class NoPieceError < StandardError
  def m2
    puts "ther's no piece in this position"
  end
  end
class CannotMoveError < StandardError
  def m1
    puts "you can't move the piece or the piece can't make that move"
  end
end

class Board
  attr_reader :rows 
  def initialize
    # debugger
    @rows = Array.new(8) {Array.new(8)}
    # @sentinel = NullPiece.new 
    self.populate
  end
  
  def populate # we currently didnot assign what piece we only set up the piece and the board
    # debugger
    (0...8).each do |i|
      @rows[0][i] = Piece.new(self,:white,[0,i])
      @rows[1][i] = Piece.new(self,:white,[1,i])
      @rows[6][i] = Piece.new(self,:black,[6,i])
      @rows[7][i] = Piece.new(self,:black,[7,i])
    end
    (2..5).each do |i|
      (0..7).each do |j|
        @rows[i][j] = NullPiece.instance
      end
    end
  end

  def [](pos)
    row, col = pos
    @rows[row][col] 
  end
  
  def []=(pos,val)
    row, col = pos
    @rows[row][col] = val
  end
  
  def move_piece(start_pos,end_pos) # we have to use self[pos] here because we have already defined a method to put instances in the rows at given position 
     if valid_pos?(start_pos) #issue = THIS teleports the piece, doesn't define what move they can make
      #debugger
      self[start_pos], self[end_pos] = self[end_pos], self[start_pos] #pry(main)> b.move_piece([0,0],[4,4])=> [null_piece, piece]
     end
    
  end

  def valid_pos?(pos)
    x , y = pos
    #debugger
    if self[pos].is_a?(NullPiece)
      return false
      # puts "try again"
      # raise NoPieceError
     end
     if !(x >= 0 && x < 8 && y < 8 && y >=0) # check whether or not the position is out of the chess board.
      # raise CannotMoveError
      return false
      # puts "cannot move"
     end
     true
  end

  def add_piece(piece,pos)
  end

  def checkmate?(color) #if king color have no possible moves. Checkmate to that color, declare other color winner
  end
  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color,start_pos,end_pos)
  end

  private
  attr_accessor :sentinel
end