def shuffle array
	final_array = []
	while array.length > 0
	num = 0
	rand_index = rand(array.length)
	size = array.length
	holding_pen = []
	
	array.each do |x|
		if num == rand_index
		final_array << x
		else
		holding_pen << x
		end
		num = num + 1
	end
array = holding_pen
end
final_array
	
end
