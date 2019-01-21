def log description, &block

    puts 'Start ' + description

    output = block.call

    puts 'End ' + description

    puts 'Returned ' + output.to_s
end

log 'two plus two' do
    log 'one plus one' do
        1+1
    end
    2+2
end