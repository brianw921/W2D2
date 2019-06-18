require_relative "Piece"

class Pawn < Piece

  attr_reader :symbol
  
  def initialize
    @symbol = :P 
  end

  def move_dirs

  end

  private 
  def at_start_row?
  end

  def forward_dir #returns 1 or -1
    
  end

  def forward_steps
    if forward_dir == 1
      [self.position[0] + 1, self.position[1]]
    else 
      [self.position[0] - 1, self.position[1]]
    end
  end

  def side_attacks
  end
end