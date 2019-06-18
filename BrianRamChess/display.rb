require "colorize"
require_relative "Board"
require_relative "cursor"
require "byebug"
class Display
  def initialize(board)
    @cursor = Cursor.new([0,0],board)
    @board = board
  end

  def render #QUESTION COJLOR DID N OT APPEAR
    @board.rows.each_with_index do |row_arr , i|
      row_arr.each_with_index do |piece_obj , j|
        pos = [i,j]
        if pos == @cursor.cursor_pos 
            if @cursor.selected
              print "#{@board[pos].to_s}".colorize(:blue) + "  "
            else
              print "#{@board[pos].to_s}".colorize(:red) + "  "
            end
        else
          print "#{@board[pos].to_s}".colorize(@board[pos].color) + "  " #we accessed the board at a position which gives us a piece and from the piece, and got the color from the piece
        end
      end
      puts
    end
  end

  def method_loop #QUESTION on how to loop
    while true
      @cursor.get_input
      self.render 
      puts "___________"
      
    end
  end
end

d = Display.new(Board.new)
d.method_loop