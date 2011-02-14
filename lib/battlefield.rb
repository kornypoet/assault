module Assault

  class Battlefield

    attr_accessor :state

    def initialize
      @state = []
    end

    def describe
      attributes = {
        'left_bound'  => left_bound,
        'right_bound' => right_bound,
        'north_bound' => north_bound,
        'south_bound' => south_bound,
        'columns'     => columns,
        'rows'        => rows,
        'live_cells'  => live_cells,
        'dead_cells'  => dead_cells
      }
    end

    def left_bound
      leftmost = @state.inject(1) do |default, cell|
        default <= cell.x_cord ? default : cell.x_cord
      end
    end

    def right_bound
      rightmost = @state.inject(4) do |default, cell|
        default >= cell.x_cord ? default : cell.x_cord
      end
    end

    def north_bound
      northmost = @state.inject(3) do |default, cell|
        default >= cell.y_cord ? default : cell.y_cord
      end
    end

    def south_bound
      southmost = @state.inject(-3) do |default, cell|
        default <= cell.y_cord ? default : cell.y_cord
      end
    end

    def columns
      cols = right_bound - left_bound
      cols += 1 unless (right_bound < 0) ^ (left_bound < 0)
      cols
    end

    def rows
      north_bound - south_bound
    end

    def live_cells
      cell_count = 0
      @state.each { |cell| cell_count +=1 if cell.alive? }
      cell_count
    end

    def dead_cells
      cell_count = 0
      @state.each { |cell| cell_count +=1 unless cell.alive? }
      cell_count
    end

    def draw
      grid = ""
      rows.times do
        columns.times { grid += "[ ]"}
        grid += "\n"
      end
      puts grid
    end

  end
end
