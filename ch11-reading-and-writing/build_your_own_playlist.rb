def shuffle(arr)
  arr.shuffle
end

list = Dir["/Users/Hanna/Files/Music/*.ogg"]

songs = shuffle(list)

filename = "playlist.m3u"

File.open(filename, "w") do |f|
  songs.each do |song|
  f.write song
end
end



