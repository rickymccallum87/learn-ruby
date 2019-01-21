class OrangeTree

    def initialize
        puts 'You plant an orange tree.'
        @height = 0
        @age = 0
        @oranges = 0
        @growth =       [0, 2, 4, 6, 8, 9, 10, 10, 10]
        @production =   [0, 0, 0, 0, 4, 8, 12, 10, 8]
    end

    def height
        @height
    end

    def advance
        @age += 1
        if not self.alive?
            puts 'The orange tree has died.'
        else
            puts 'A year passes.'
            @height = @growth[@age]
            @oranges = @production[@age]
        end
    end

    def count
        @oranges
    end

    def pick
        if @oranges > 0
            @oranges -= 1
            puts 'Delicious!'
        else
            puts 'None left.'
        end
    end

    def alive?
        @age < @growth.length
    end

end

o = OrangeTree.new
while o.alive?
    puts o.height.to_s + ' ft'
    puts o.count.to_s + ' oranges'
    10.times do
        o.pick
    end
    o.advance
    gets
end