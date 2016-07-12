
def grandfather_clock &block
    
    twelve_hours = Time.new.hour
    if twelve_hours > 12
        twelve_hours -= 12
        end
    
    twelve_hours.times do
        block.call
    end
end

grandfather_clock do
    puts 'DONG!'
    
end

