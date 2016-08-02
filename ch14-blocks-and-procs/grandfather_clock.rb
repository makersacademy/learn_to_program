def grandfather_clock &block
    hour = Time.new.hour 
    
    if hour == 0
        hour = hour + 12
    elsif hour >= 13
        hour = hour - 12
    end
    
    hour.times{block.call}
end 

grandfather_clock do
    puts "DONG!"
end
