def grandfather_clock(&block)
    h = (Time.new.hour + 11)%12 + 1
    h.times do
        block.call
    end
end

grandfather_clock do
    puts 'DONG!'
end