def shuffle arr
length = arr.length

num_array = []
shuffled_array = []
shufnum = Random.new
i = 0

while i < length do
	new_num = shufnum.rand(0...length)
	if num_array.include?(new_num) == false
		num_array << new_num
		i += 1
	end
end

arr.length.times.with_index do |x, i|
	shuffled_array << arr[num_array[i]] 
end

return shuffled_array
end
