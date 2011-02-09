class Cell

  attr_accessor :x_cord, :y_cord, :life

  def initialize(x,y)
    @x_cord = x.to_i
    @y_cord = y.to_i
    @life   = true
  end

  def describe
    "#{self.class} - #{x_cord}.#{y_cord} - #{life} - #{territory}"
  end

  def is_dead?
    !life
  end

  def territory
    y_cord < 0 ? "friendly" : "enemy"
  end

  def distance_to cell
    x_dist = (self.x_cord - cell.x_cord).abs
    y_dist = (self.y_cord - cell.y_cord).abs
    y_dist -= 1 unless self.territory == cell.territory
    [x_dist, y_dist]
  end

end

class WhiteBloodCell < Cell

end

class Virus < Cell

end
