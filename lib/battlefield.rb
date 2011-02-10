module Assault

  class Battlefield

    attr_accessor :state

    def initialize
      @state = []
    end

    def describe
      {
        'columns'     => columns,
        'rows'        => rows,
        'left_bound'  => left_bound,
        'right_bound' => right_bound,
        'north_bound' => north_bound,
        'south_bound' => south_bound,
        'live_cells'  => live_cells,
        'dead_cells'  => dead_cells
      }
    end

    def columns
      right_bound - left_bound + 1
    end

    def rows
      north_bound - south_bound
    end
    def left_bound
      2
    end
    def right_bound
      4
    end
    def north_bound
      3
    end
    def south_bound
      -3
    end
    def live_cells
      0
    end
    def dead_cells
      0
    end
  end

end
