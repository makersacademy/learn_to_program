def dictionary_sort ar
  lower_ar = []
	ar.each {|x| lower_ar.push x.downcase} 
	sorted = []
	until ar.length == 0
		test = lower_ar.pop
		test_ar = ar.pop
		i = 0
		while i < ar.length
			if lower_ar[i] < test
				temp = test_ar
				test_ar = ar[i]
				ar[i] = temp
				temp = test
				test = lower_ar[i]
				lower_ar[i] = temp
			end
			i += 1
		end
		sorted.push test_ar
	end
	return sorted
end

puts "Please enter a list of words you wish to be sorted (press enter between each, enter blank spance when finished)"
array = []
while true
	input = gets.chomp
	array.push input
	if input.length == 0
		break
	end
end
# for some reason this wan't working before, but now it does... weird

puts dictionary_sort array