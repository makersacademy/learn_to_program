def mix filenames
	filenames    = filenames.sort
	sorted_files = filenames.length

	2.times do
		first_shuffle = 0
		second_shuffle = sorted_files/2
		shuffled = []

		while shuffled.length < sorted_files
			if shuffled.length%2 == 0
				shuffled.push(filenames[first_shuffle])
				first_shuffle = first_shuffle + 1
			else
				shuffled.push(filenames[second_shuffle])
				second_shuffle = second_shuffle + 1
			end
		end

		filenames = shuffled
	end

	arr = []
	cut = rand(sorted_files)
	idx = 0

	while idx < sorted_files
		arr.push(filenames[(idx+cut)%sorted_files])
		idx = idx + 1
	end

	arr
end

music = mix(Dir['**/*.mp3'])

File.open 'music.m3u', 'w' do |f|
	music.each do |mp3|
		f.write mp3+"\n"
	end
end

puts 'Done!'