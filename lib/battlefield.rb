module Assault

  class Battlefield < Array

    attr_accessor :state

    def initialize *args
      @state = [[0,0,0],[0,0,0],[0,0,0]]
      args.each do |loc|
        @state[loc[0]][loc[1]] = 'f'
      end
    end

    def battle_line
    end

    def print_state
      @state.each do |row|
        p row
      end
    end

    def square
    end

  end

end

normandy = Assault::Battlefield.new([1,2], [0,0])
normandy.print_state
