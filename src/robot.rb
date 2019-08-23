VALID_FACING = %w(NORTH EAST SOUTH WEST)

class Robot
  def initialize(table)
    @table = table
  end

  def place(x, y, facing)
    return false if VALID_FACING.include?(facing.upcase)

    if ((x >= 0 ) && ( x <= @table.length) && (y >= 0) && ( y <= @table.width))
      @location = {
        x: x,
        y: y,
        facing: facing
      }
      return true
    else
      false
    end 
  end


end

