puts 'Type as many words as you want.'

words = [gets.chomp]
while words.last != ''
    words.push(gets.chomp)
end
words.pop

sorted = []
while words.length > 0
    sorted.push(words.min)
    words.delete(words.min)
end

puts sorted