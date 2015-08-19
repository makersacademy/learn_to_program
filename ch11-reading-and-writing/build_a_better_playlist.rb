def music_shuffle filenames
  songs = filenames.sort
  
  2.times do
  half1 = 0
  half2 = songs.length / 2
  shuffled = []
    
  while shuffled.length < songs.length
    if shuffled.length.even? 
      shuffled.push(songs[half1]); half1 += 1 
    else
      shuffled.push(songs[half2]); half2 += 1
    end
  end 
  
  end
  	
  File.open("Playlist.m3u", "w+"){|playlist| playlist.puts shuffled}

end
