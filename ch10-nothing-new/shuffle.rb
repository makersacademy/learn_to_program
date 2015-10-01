def shuffle arr
	len = arr.length
	new_arr = Array.new(len)

	if arr.length < 1
		puts "Array must contain more than 1 property"
	end

	arr.each do |i|
		new_arr.insert(rand(len - 1), i)
	end

	new_arr.each do |i|
		if i == nil
			new_arr.delete(nil)
		end
	end

	new_arr

end

print shuffle([1,2,3,4,5,6])