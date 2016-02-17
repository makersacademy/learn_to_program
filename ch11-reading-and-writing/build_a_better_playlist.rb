def music_shuffle songs
    
  songs = songs.sort
  size = songs.length

  5.times do
      
    shuffled = []
    
    pile1 = size/2
    pile2 = 0

    while shuffled.length < size
      if shuffled.length % 2 == 0
        shuffled.push(songs[pile1])
        pile1 += 1
      else
        shuffled.push(songs[pile2])
        pile2 += 1
      end
    end

    songs = shuffled
  end
  
  playlist = []
  cut = rand(size) 
  half = 0

  while half < size
    playlist.push(songs[(half + cut) % size])
    half += 1
  end
  
  playlist
end
