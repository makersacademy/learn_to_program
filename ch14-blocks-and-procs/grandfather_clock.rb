def grandfather_clock &block
  
  time = Time.new.hour

  if time > 12
  	time = time % 12
  end

  if time == 0
  	time = 12
  end

  time.times(&block)
end

grandfather_clock{puts "DONG!"}

	