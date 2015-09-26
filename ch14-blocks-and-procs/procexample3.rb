def compose proc1, proc2
	Proc.new do |x|
		proc1.call(proc2.call(x))
	end
end

squareit = Proc.new do |x|
	x * x
end

doubleit = Proc.new do |x|
x * 2

end


doubleThenSquare = compose doubleit, squareit
squareThenDouble = compose squareit, doubleit

puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)

