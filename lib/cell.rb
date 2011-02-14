module Assault

  class Cell

    attr_accessor :x_cord, :y_cord, :life

    def initialize(x,y)
      @x_cord = x
      @y_cord = y
      @life   = true
    end

    def describe
      "#{self.class} - #{x_cord}.#{y_cord} - #{alive?} - #{territory}"
    end

    def alive?
      life
    end

    def territory
      y_cord < 0 ? "friendly" : "enemy"
    end

    def distance_to cell
      x_dist = (self.x_cord - cell.x_cord).abs
      y_dist = (self.y_cord - cell.y_cord).abs
      x_dist -= 1 if (self.x_cord < 0) ^ (cell.x_cord < 0)
      y_dist -= 1 unless self.territory == cell.territory
      [x_dist, y_dist]
    end

  end

  class WhiteBloodCell < Cell

  end

  class Virus < Cell

  end
end


bob = Assault::Virus.new(1,2)
p bob.describe
