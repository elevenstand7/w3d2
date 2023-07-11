require "./card.rb"

class Board

    def initialize(size)
        @grid = Array.new(size) {Array.new(size, "___" )}

    end

    def populate
        card_pair_amount = (@size ** 2) / 2
        while card_pair_amount > 0
        card_pair = Card.new(rand(0..10))
            mini-count = 2
            x_indx = rand(0...@size)
            y_indx = rand(0...@size)

            x_indx2 = rand(0...@size)
            y_indx2 = rand(0...@size)

            if empty?([x_indx, y_indx]) 
                @grid[x_indx][y_indx] = card_pair
            end

            if empty?([x_indx2, y_indx2]) 
                @grid[x_indx2][y_indx2] = card_pair
            end
            card_pair_amount -= 1 if 
        end
    end

    def empty?(pos)
        pos[0] = col
        pos[1] = row

        @grid[col][row] == "___"

    end




end