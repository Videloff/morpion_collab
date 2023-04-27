class Player
    attr_accessor :name, :symbol, :number, :score
    
    def initialize(number, name_to_save)
        @name = name_to_save
        @symbol = ""
        @number = number
        @score = 0
        if number == 1
            @symbol = "x"
        else 
            @symbol = "o"
        end 
    end

    def add_score
        @score += 1
    end 
end