def grandfather_clock &block
  x = Time.new.hour

if x >= 13
	x = x-12
end

if x == 0
	x = 12
end


x.times do
	block.call
end
end

grandfather_clock do
	puts 'DONG!'
	
end
