puts 'OH, HELLO.'
bye_count = 0
say = gets.chomp

while bye_count < 3
    if say == say.upcase
        year = rand(21) + 1930
        puts 'NO, NOT SINCE ' + year.to_s + '!'
    else
        puts 'HUH?! SPEAK UP, SONNY!'
    end
    say = gets.chomp
    if say == 'BYE'
        bye_count += 1
        if bye_count < 3
            puts 'Ehh..'
        end
    end
end

puts 'Oh, er.. GOODBYE, DEARIE.'