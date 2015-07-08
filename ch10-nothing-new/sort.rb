def sort ar
	sorted = []
	until ar.length == 0
		test = ar.pop
		i = 0
		while i < ar.length
			if ar[i] < test
				temp = test
				test = ar[i]
				ar[i] = temp
			end
			i += 1
		end
		sorted.push test
	end
	return sorted
end

puts sort (['can','feel','singing','like','a','can'])