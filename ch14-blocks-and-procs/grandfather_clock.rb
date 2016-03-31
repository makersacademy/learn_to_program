def grandfather_clock &block
  Time.new.hour.times do
    block.call
  end
end

grandfather_clock do   
  puts "DONG!"
end


