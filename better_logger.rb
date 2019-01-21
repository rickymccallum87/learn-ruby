def log description, &block

    start_text = ''
    start_text += '  ' * $nest_level
    start_text += '<< ' + description
    puts start_text

    $nest_level += 1
    output = block.call
    $nest_level -= 1

    end_text = ''
    end_text += '  ' * $nest_level
    end_text += '>> !' + description + ' == ' + output.to_s
    puts end_text

end

$nest_level = 0

log 'two plus two' do
    log 'one plus one' do
        log 'three times three' do
            3*3
        end
        1+1
    end
    2+2
end