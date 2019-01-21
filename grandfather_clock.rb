def hourly &block

    hour = Time.now.hour
    if hour > 12
        hour -= 12
    end

    while hour > 0
        block.call
        hour -= 1
    end

end

hourly do
    puts 'DONG!'
end