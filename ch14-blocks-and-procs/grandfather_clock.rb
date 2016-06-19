
def grand_clock &some_block
    
    twelve_hours = Time.new.strftime("%I")
    twelve_hours.to_i.times do
        some_block.call
    end
end

grand_clock do
    puts 'DONG!'
    
end

