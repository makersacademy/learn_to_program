def music_shuffle(playlist)

    playlist = playlist.sort
    tracks = playlist.length

    2.times do
    left_deck = 0
    right_deck = tracks/2
    shuffler = []
      
      while shuffler.length < tracks
        if shuffler.length.even?
           shuffler.push(playlist[right_deck])
           right_deck += 1
        else
           shuffler.push(playlist[left_deck])
           left_deck += 1
        end
      end
    playlist = shuffler
    end
    
    new_playlist = []
    cut = rand(tracks)
    index = 0
    
    while index < tracks
        new_playlist.push(playlist[(index+cut)%tracks])
        index += 1
    end
   
    new_playlist
end    
