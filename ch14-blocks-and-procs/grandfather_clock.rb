def grandfather_clock &block
    ding = Time.new.hour
    ding.times do 
        block.call
    end
end