def english_number num

    if num < 0
        return 'Please enter a number that isn\'t negative.'
    end

    if num == 0
        return 'zero'
    end

    str = ''

    ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

    str = ones[num-1]

end

num = 0
while num != ''
    num = gets.chomp
    puts english_number(num.to_i)
end