def music_shuffle filenames
  songs = filenames.sort

  2.times do
    half1 = 0 
    half2 = songs.length / 2 
    shuffled = []

    while shuffled.length < songs.length
      if shuffled.length % 2 == 0
        shuffled.push(songs[half2])
        half2 += 1
      else
        shuffled.push(songs[half1])
        half1 += 1
      end
    end
    songs = shuffled
  end

  playlist = []
  cut = rand(songs.length)
  i = 0

  while i < songs.length
    playlist.push(songs[(i + cut) % songs.length])
    i += 1
  end
  
  playlist
end