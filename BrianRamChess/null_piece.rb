require_relative "Piece"
require 'singleton'

class NullPiece < Piece
  
  include Singleton
  
  def initialize
    # @symbol = :N 
  end

  def to_s
    " "
  end

  
  
end