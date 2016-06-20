def grandfather_clock &block
  
hour = Time.new.hour

if hour >= 13
 	hour -= 12
	hour.times do
	block.call
	end
elsif hour == 0
	hour = 12
	hour.times do 
	block.call
	end	
else
	hour.times do
	block.call
	end

end

end

grandfather_clock do 
	puts "Dong!"
end


