class Card 
    @face_value
    @revealed

    attr_writer :revealed
    attr_reader :face_value, :revealed

    def initialize(face_value, revealed = true)
        @face_value = face_value
        @revealed = revealed
    end

    def hide
        @revealed = false
    end

    def reveal
        if @revealed
            @face_value
        else
            nil
        end
    end

    def revealed
        @revealed
    end
    
    def to_s
        @face_value.to_s
    end

    def ==(card2)
        return self.face_value == card2.face_value
    end

    



end