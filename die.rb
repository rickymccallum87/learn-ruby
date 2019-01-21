class Die

    def initialize
        roll
    end

    def roll
        @number_showing = 1 + rand(6)
    end

    def showing
        @number_showing
    end

    def cheat num
        if num >= 1 and num <= 6
            @number_showing = num
        end
    end

end

die = Die.new
puts die.showing
cheat_roll = gets.chomp.to_i
die.cheat(cheat_roll)
puts die.showing