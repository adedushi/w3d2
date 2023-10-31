require_relative "./card.rb"

class Board

    @grid
    
    def initialize
        @size = 4
        @grid = Array.new(@size) { Array.new(@size) }
        populate
    end

    def populate
        hash = generate_hash

        @grid.each_with_index do |row, i|
            row.each_with_index do |ele, j|
                symbol = hash.keys.select { |key| hash[key] > 0 }.sample
                card = Card.new(symbol)
                @grid[i][j] = card
                hash[card.face_value] -= 1
            end
        end

    end

    def hide_all
        @grid.each do |row|
            row.each do |card|
                card.hide
            end
        end
    end


    def generate_hash
        num_pairs = @grid.flatten.count / 2
        value_hash = Hash.new { |h,k| h[k] = 2}
        
        while num_pairs > 0
            face_value = rand(65..90).chr.to_s
            while value_hash.has_key?(face_value)
                face_value = rand(65..90).chr.to_s
            end
            value_hash[face_value]
            num_pairs -= 1
        end

        value_hash
    end

    def render
        print "  "
        (0...@grid.size).each do |idx|
            print idx.to_s + " "
        end
        puts
        @grid.each_with_index do |row, j|
            print j.to_s + " "
            row.each do |ele|
                if ele.revealed
                    print ele.face_value.to_s + " "
                else
                    print "  "
                end
            end
            puts
        end
    end

    def won?
        @grid.flatten.all? { |card| card.revealed == true }
    end

    def reveal(guessed_pos)
        @grid[guessed_pos[0]][guessed_pos[1]].revealed = true
    end

    def [](pos)
        x, y = pos
        @grid[x][y]
    end





end
