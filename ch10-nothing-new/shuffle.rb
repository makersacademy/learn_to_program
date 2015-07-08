def shuffle ar
 	shuf_ar = [ ]
	x = ar.length

	until ar == []

		y = rand(x)
		if shuf_ar[y] == nil	
			shuf_ar[y] = ar.pop
		end

	end

	return shuf_ar

end

array = [1, 2, 3, 4, 5]
puts shuffle array