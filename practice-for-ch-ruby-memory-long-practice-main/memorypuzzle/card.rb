class Card
    #face value
    #bool: facedown faceup
    def initialize(face_val)
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
            @facedown = fasle
        end
    end

    def hide
        if !@facedown
            @facedown = true
        end
    end

    
    

    #to_s

    #==

end