def shuffle(array)
  shuffled = []

  while array.length > 0
 
    rand_index = rand(array.length)

 
    current_index = 0
    unshuffled = []

    array.each do |item|
      if current_index == rand_index
        shuffled << item
      else
        unshuffled << item
      end

      current_index += 1
    end

  
    array = unshuffled

  end

  shuffled

end


playlist = shuffle(Dir['**/*.mp3'])

# creates an array called playlist with all the mp3s in this directory and 
# its subdirectories, shuffled using original shuffle method

File.open('playlist.m3u', 'w') do |f|  #opens a new file called playlist.m3u with 
                                      #write permissions with object f
  playlist.each do |song| #for each item shuffled array of songs, 
    f.write song+"\n"     #write each song to object f and add a blank line
  end
end

puts 'Playlist created!'
