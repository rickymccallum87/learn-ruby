def english_number number

    if number < 0
        return 'negative'
    end

    if number == 0
        return 'zero'
    end

    spoken_number = ''

    ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    remaining = number
    current = remaining / 1000000000000 # how many trillions?
    remaining -= current * 1000000000000 # subtract those trillions

    # speak trillions
    if current > 0
        trillions = english_number current
        spoken_number += trillions + ' trillion'

        if remaining > 0
            spoken_number += ' '
        end
    end

    current = remaining / 1000000000 # how many billions?
    remaining -= current * 1000000000 # subtract those billions

    # speak billions
    if current > 0
        billions = english_number current
        spoken_number += billions + ' billion'

        if remaining > 0
            spoken_number += ' '
        end
    end

    current = remaining / 1000000   # how many millions?
    remaining -= current * 1000000  # subtract those millions

    # speak millions
    if current > 0
        millions = english_number current
        spoken_number += millions + ' million'

        if remaining > 0
            spoken_number += ' '
        end
    end

    current = remaining / 1000      # how many thousands?
    remaining -= current * 1000     # subtract those thousands

    # speak thousands
    if current > 0
        thousands = english_number current
        spoken_number += thousands + ' thousand'

        if remaining > 0
            spoken_number += ' '
        end
    end

    current = remaining / 100       # how many hundreds?
    remaining -= current * 100      # subtract those hundreds

    # speak hundreds
    if current > 0
        hundreds = english_number current
        spoken_number += hundreds + ' hundred'

        if remaining > 0
            spoken_number += ' '
        end
    end

    current = remaining / 10        # how many tens?
    remaining -= current * 10       # subtract those tens

    # speak tens
    if current > 0
        # account for teens
        if current == 1 and remaining > 0
            spoken_number += teens[remaining-1]
            remaining = 0
        else
            spoken_number += tens[current-1]
        end

        if remaining > 0
            spoken_number += '-'
        end
    end

    current = remaining             # how many ones?
    remaining = 0                   # subtract those ones

    # speak ones
    if current > 0
        spoken_number += ones[current-1]
    end

    spoken_number
end

def bottlesSong bottles
    
    while bottles > 0
        puts english_number(bottles).capitalize + ' bottles of beer on the wall.'
        puts english_number(bottles).capitalize + ' bottles of beer..'
        puts 'Take one down, pass it around.'

        bottles -= 1
        puts english_number(bottles).capitalize + ' bottles of beer on the wall!'
        puts ''
    end

end

bottles = gets.chomp
bottlesSong(bottles.to_i)