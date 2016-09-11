def grandfather_clock &block
    hour = Time.new.hour #take a time reading
    if hour > 12 # check if its am or pm
       hour = hour - 12 #if pm than deduct 12
    else
        hour # if am return the hour
    end
    hour.times do #call the method hour times.
    block.call
    end
end
=begin
grandfather_clock do 
    puts "DONG!"
end
=end