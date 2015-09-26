def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length

  2.times do
    l_index = 0
    r_index = len/2
    shuf = []

    while shuf.length < len
      if shuf.length % 2 == 0
        shuf.push(filenames[r_index])
        r_index += 1
      else
        shuf.push(filenames[l_index])
        l_index += 1
      end
    end

    filenames = shuf
  end

  arr = []
  cut = rand(len)
  index = 0

  while index < len
    arr.push(filenames[(index+cut)%len])
    index += 1
  end
  arr
end

music_files = music_shuffle(Dir['/Users/lucetzer/Music/Various_singles/*.{mp3,m4a}'])

File.open 'singles_playlist.m3u', 'w' do |f|
  music_files.each do |song|
    f.write song + "\n"
  end
end


