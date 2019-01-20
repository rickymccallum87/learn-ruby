puts 'First name? '
first = gets.chomp

puts 'Middle name? '
middle = gets.chomp

puts 'Last name? '
last = gets.chomp

length = first.length + middle.length + last.length
puts 'Your name is ' + length.to_s + ' letters long.'