songs = Dir["/Users/hatran/Documents/Music/*.mp3"]

File.open("playlist.m3u", "w") do |file|
  songs.each do |song|
    file.write(song + "\n")
  end
end

array = File.readlines("playlist.m3u")

def shuffle arr
  new_array = []
  while true
    random = arr.sample
    new_array << random
    arr.slice!(arr.index(random))
    break if arr.empty?
  end
  new_array
end

puts shuffle(array)