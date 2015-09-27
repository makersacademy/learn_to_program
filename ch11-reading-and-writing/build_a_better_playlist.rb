def music_shuffle filenames
	filenames = filenames.sort
	qty = filenames.length
	
	2.times do
		l_i = 0
		r_i = qty/2
		shuff = []
		
		while shuff.length < qty 
			if shuff.length % 2 == 0
				shuff.push(filenames[r_i])
				r_i = r_i + 1
			else
				shuff.push(filenames[l_i])
				l_i = l_i +1
			end
		end
		
		filenames = shuff
	end

	cut_arr = []
	cut = rand(qty)
	ind = 0
	while ind < qty 
		cut_arr.push(filenames[(cut+ind)%qty])
		ind = ind + 1
	end
	cut_arr
end

#songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
#puts(music_shuffle(songs))

















