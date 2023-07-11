require "./card.rb"

class Board

    def initialize
        @grid = Array.new(4) {Array.new(4, "___" )}
    end

    def populate
       cards = ["a", "a", "b", "b", "c", "c", "d", "d", "e", "e", "f", "f", "g", "g", "h", "h"]
       shuffled_cards = cards.shuffle(random: Random.new(1))
       p shuffled_cards
        i = 0
               (0..3).each do |indx1|
                   (0..3).each do |indx2|
                       @grid[indx1][indx2] = shuffled_cards[i]
                       i += 1
                   end
                end

       @grid
    end

    def empty?(pos)
        col = pos[0]
        row = pos[1]
        @grid[col][row] == "___"
    end




end