class Card 
    attr_writer :revealed
    attr_reader :face_value

    def initialize(face_value)
        @face_value = face_value
        @revealed = true
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
    
    def to_s
        @face_value.to_s
    end

    def ==(card2)
        return self.face_value == card2.face_value
    end

    



end