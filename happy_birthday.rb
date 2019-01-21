puts 'Birth year?'
year = gets.chomp.to_i

puts 'Birth month?'
month = gets.chomp.to_i

puts 'Birth day?'
day = gets.chomp.to_i

year_counter = Time.mktime(year, month, day)
now = Time.now
year_in_seconds = 60 * 60 * 24 * 365
spank_count = 0
year_counter += year_in_seconds

while year_counter < now
    puts 'SPANK!'
    spank_count += 1
    year_counter += year_in_seconds
end

puts "(That's #{spank_count.to_s} spanks)"