def shuffle (array)
  shuffled = []
  if array.length == 0
    return array
  else
    while array.length > 0
      n = rand(array.length - 1)
      shuffled << array[n]
      array.delete_at(n)
    end
  end
    shuffled
end

# check: puts Dir["C:/Users/Li/Music/Various/**/*.{mp3,wma}"]
# check: puts Dir["C:/Users/Li/Music/Various/**/*.{mp3,wma}"].length
songs = shuffle(Dir["C:/Users/Li/Music/Various/**/*.{mp3,wma}"])

File.open "playlist_v.m3u", "w" do |f|
  songs.each do |song|                      # can't write the playlist with an array so each method is used
    f.write song + "\n"
  end
end

puts "Checkout the new playlist!"
