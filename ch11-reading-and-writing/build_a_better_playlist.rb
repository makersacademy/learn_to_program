def music_shuffle filenames
	shuf = []
	while filenames.length != 0
		a = rand(filenames.length)
		#shuffle = music_list.sample(a)
		#file_name.write filenames[a] + "\n"
		shuf.push file_names[a]
		filenames.delete_at(a)
	end
	shuf
end
