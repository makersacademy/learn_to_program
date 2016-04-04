def music_shuffle filenames
	music_files = Dir['**/*.mp3']

	playlist = []
	songs_num = music_files.length
	count = 0
	prev_album = ""


	while songs_num > count
		track_num = rand(0..songs_num-1)
		song_name = music_files[track_num].split'/'
		current_album = song_name[2]
		if current_album != prev_album
			if music_files[track_num] != "" then
				playlist << music_files.pop[track_num]
				music_files[track_num] = ""
				count += 1
			end
			prev_album = current_album
		end
	end

	# Create playlist
	File.open 'playlist.m3u', 'w' do |f|
		f.write playlist
	end
end






  len = filenames.length
  2.times do
      l_idx = 0
      r_idx = len/2
      shuf = []
      while shuf.length < len
      if shuf.length%2 == 0
        shuf.push(filenames[r_idx])
          r_idx = r_idx + 1
      else
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end
    filenames = shuf
  end
  arr = []
  cut = rand(len)
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end
  arr
end
