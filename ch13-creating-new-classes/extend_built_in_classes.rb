class Integer
	def factorial 
		total = 1
		i=self
		while i > 0
			total=total*i
			i-=1
  	end
  	total
	end
end

puts 5.factorial
