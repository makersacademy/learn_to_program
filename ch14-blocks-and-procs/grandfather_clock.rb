def grandfather_clock &block
  time = Time.new.hour
  if time > 12
  	time -= 12
  else
  	time
  end

  time.times do 
  	block.call
  end

end

grandfather_clock do
	puts "Dong!"

end