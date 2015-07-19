def shuffle arr
  #somewhere to put the shuffled values
  shuffled_array = []
  counter = 1
  until arr.empty?
    #get value out of array
    item_being_shuffled = arr.pop
    #insert value into array at random index
    shuffled_array.insert(rand(counter), item_being_shuffled)
    counter += 1
  end
  shuffled_array
end

#get songs for playlist into an array
filename = "/Users/Sarah/Music/Playlists/brilliant_playlist.m3u"
songs = []
songs_to_add = Dir["/Users/Sarah/Music/*.mp3"]
songs_to_add.each do |s|
  songs.push s
  end

#shuffle the array of songs into a multi line string
almost_playlist = (shuffle songs).join("\n")

#put songs into a new file
File.open filename, "w" do |f|
    f.write almost_playlist
end