require_relative "./card.rb"

class Board

    @grid
    @size = 4

    def initialize
        @grid = Array.new(@size) { Array.new(@size) }
    end

    def populate
        num_pairs = @grid.flatten.count / 2

        while num_pairs > 0
            letter = (65..90).rand.chr
            
            card = Card.new()
        end
    end
end