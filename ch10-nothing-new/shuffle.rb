def shuffle arr
shuf = []

	while arr.length>0
	rand = rand(arr.length)
	current = 0
	new_arr = []

	arr.each do |x|
	if current == rand
	shuf.push x
	else
		new_arr.push x
	end
end

arr = new_arr
end

shuf
end

puts ["f","e","a","z"].shuffle