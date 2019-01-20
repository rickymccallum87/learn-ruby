puts 'Starting year?'
starting = gets.chomp.to_i

puts 'Ending year?'
ending = gets.chomp.to_i

current = starting
while current <= ending
    divisible_by_4 = current % 4 == 0
    divisible_by_100 = current % 100 == 0
    divisible_by_400 = current % 400 == 0

    if divisible_by_4 and (not divisible_by_100 or divisible_by_400)
        puts current
    end

    current += 1
end