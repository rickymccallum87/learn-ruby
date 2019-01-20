puts 'Type as many words as you want.'

words = []
words[0] = gets.chomp
while words.last != ''
    words.push(gets.chomp)
end

puts words.sort