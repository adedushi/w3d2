require_relative "./card.rb"

class Board

    @grid
    
    def initialize
        @size = 4
        @grid = Array.new(@size) { Array.new(@size) }
    end

    def populate
    end

    #     while num_pairs > 0
    #         face_value = (65..90).rand.chr.to_s
    #         while @grid.include(face_value)
    #             face_value = (65..90).rand.chr.to_s
    #         end
    #         card = Card.new(face_value)
    #     end
    # end

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
    end


end