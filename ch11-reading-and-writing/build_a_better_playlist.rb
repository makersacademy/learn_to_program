 def music_shuffle filenames
 	filenames = filenames.sort
	quan = filenames.length

 2.times do
		a = 0 
		b = quan/2 
 		arr1 = []

	while arr1.length < quan
 		if arr1.length%2 == 0
			arr1.push(filenames[b])
			b = b + 1
		else
			arr1.push(filenames[a])
 			a = a + 1
 		end
	end

    filenames = arr1
 end

 arr = []
 cut = rand(quan) 
 idx = 0

 	while idx < quan
		arr.push(filenames[(idx+cut)%quan])
		idx = idx + 1
	end

arr
end

#songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
#puts(music_shuffle(songs))

