def grandfather_clock &block
  time = Time.new.hour >=12 ? Time.new.hour - 12 : Time.new.hour
  time.times do 
  	block.call
  end
end