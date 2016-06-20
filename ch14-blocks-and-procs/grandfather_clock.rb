
def grandfather_clock &some_block
    
    twelve_hours = Time.new.strftime("%I")
    twelve_hours.to_i.times do
        some_block.call
    end
end

grandfather_clock do
    puts 'DONG!'
    
end

