def english_number number

    if number < 0
        return 'Please enter a number that isn\'t negative.'
    end

    if number == 0
        return 'zero'
    end

    spoken_number = ''

    ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    # how much of the number remaining to translate?
    remaining = number
    current = number / 10           # how many tens?
    remaining -= current * 10       # subtract those tens

    # speak tens
    if current > 0
        # account for teens
        if current == 1 and remaining > 0
            spoken_number = teens[remaining-1]
            remaining = 0
        else
            spoken_number = tens[current-1]
        end

        if remaining > 0
            spoken_number += '-'
        end
    end

    current = remaining             # how many ones?
    remaining = 0                   # subtract those ones

    if current > 0
        spoken_number += ones[current-1]
    end

    spoken_number
end

number = gets.chomp
while number != ''
    puts english_number(number.to_i)
    number = gets.chomp
end