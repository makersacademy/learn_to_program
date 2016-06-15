def diveInside (n)
	puts "n is #{n}."
	if n == 1
		puts "stop! come out of layer #{n}"
		return 1
	end

	puts "I'm entering into a deeper layer."
	diveInside(n-1)
	puts "Came out of the layer. #{n}"
end

diveInside (5)

def factorial (num)
	if num <=1
		return 1
	else
		num * factorial(num-1)
	end
end

puts factorial (4)