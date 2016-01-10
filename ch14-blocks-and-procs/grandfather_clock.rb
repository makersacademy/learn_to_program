def grandfather_clock &block
  
  time = Time.new.hour
  
  if time > 12
  	time -= 12
  end
  time.times { block.call }
end

dong = Proc.new { puts "DONG!" } 

grandfather_clock &dong