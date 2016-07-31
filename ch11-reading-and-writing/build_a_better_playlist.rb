def music_shuffle filenames
  num_of_shuffles = 0
  n = filenames.length
  shuffled = []
  while num_of_shuffles <= 10
    until n == 0
      shuffled.push(filenames.delete_at(rand(n)))
      n -= 1
    end
    num_of_shuffles += 1
  end
  shuffled
end

songlist = Dir['/Users/laurawilson/Music/**/*.{mp3,MP3,m4a,M4A,wma,WMA}']

playlist = "Playlist.m3u"
numberofsongs = 10

songs = music_shuffle(songlist.sample(numberofsongs))

File.open playlist, 'w' do |f|
  songs.each do |song|
    f.puts(song)
  end
end
