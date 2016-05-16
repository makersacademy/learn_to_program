def music_shuffle filenames
	file_paths = filenames.map do |x|
		[x, x.split("/")]
	end
	
	shuffled = []
	branch = ""

	file_paths.each_with_index do |file, path, i|
		path_length = path.length
		if path[path_length-1] == branch
			shuffled.unshift(file[i])
			shuffled.push(file[i+1])
		else
			shuffled.push(file[i])
			shuffled.unshift(file[i+1])
		end
		branch = path[path_length-1]
	end
	
	length = shuffled.length

	num_array = []
	final_shuffled = []
	shufnum = Random.new
	i = 0

	while i < length do
        	new_num = shufnum.rand(0...length)
        	if num_array.include?(new_num) == false
                	num_array << new_num
                	i += 1
       	 	end
	end

shuffled.length.times.with_index do |x, i|
        final_shuffled << shuffled[num_array[i]]
end

return final_shuffled
end
