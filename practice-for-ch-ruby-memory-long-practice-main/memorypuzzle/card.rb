class Card

    def initialize(face_val = "")
        @face_val = face_val
        @facedown = true
    end

    def face_val
        @face_val
    end

    def facedown
        @facedown
    end

    def reveal
        if @facedown
            @facedown = false
        end
    end

    def hide
        if !@facedown
            @facedown = true
        end
    end

    def to_s(num)
        num.to_s
    end

    
    def ==(card)
        if self.face_val == card.face_val
            return true
        else
            return false
        end
    end

    def display
        if @facedown
            raise " card is facedown"
        else
            return @face_val
        end
    end

end
