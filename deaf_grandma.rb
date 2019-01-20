puts 'OH, HELLO.'
say = gets.chomp

while say != 'BYE'
    if say == say.upcase
        year = rand(21) + 1930
        puts 'NO, NOT SINCE ' + year.to_s + '!'
    else
        puts 'HUH?! SPEAK UP, SONNY!'
    end
    say = gets.chomp
end

puts 'GOODBYE, DEARIE.'