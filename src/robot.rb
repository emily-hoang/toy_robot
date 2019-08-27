VALID_FACING = %w(NORTH EAST SOUTH WEST)

class Robot
  def initialize(table)
    @table = table
    @placed = false
  end

  def place(x, y, facing)
    return false unless VALID_FACING.include?(facing.upcase)

    if ((x >= 0 ) && ( x <= @table.length) && (y >= 0) && ( y <= @table.width))
      @location = {
        x: x,
        y: y,
        facing: facing.upcase
      }
      @placed = true
      return true
    else
      false
    end 
  end

  def left
    return unless @placed
    case @location[:facing]
      when "NORTH"
        return  @location[:facing] = "WEST"
      when "SOUTH"
        @location[:facing] = "EAST"
      when "WEST"
        @location[:facing] = "SOUTH"
      when "EAST"
        @location[:facing] = "NORTH"
    end
  end

  def right
    case @location[:facing]
      when "NORTH"
        @location[:facing] = "EAST"
      when "SOUTH"
        @location[:facing] = "WEST"
      when "WEST"
        @location[:facing] = "NORTH"
      when "EAST"
        @location[:facing] = "SOUTH"
    end
  end

  def move
    return unless @placed
    case @location[:facing]
      when "NORTH"
        @location[:x] = @location[:x] + 1 if @location[:x] + 1 <= 5
      when "SOUTH"
        @location[:x] = @location[:x] + 1 if @location[:x] + 1 <= 5
      when "WEST"
        @location[:y] = @location[:y] + 1 if @location[:y] + 1 <= 5 
      when "EAST"
        @location[:y] = @location[:y] + 1 if @location[:y] + 1 <= 5
      else
        return false
    end
  end

  def report
    return unless @placed

    return @location
  end
end

