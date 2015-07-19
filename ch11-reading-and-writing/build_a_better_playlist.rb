def music_shuffle filenames
  length = filenames.length
  counter = 0
  while counter < 4 do
    left_half = 0
    right_half = length/2
    shuffled_music = []
    until shuffled_music.length == length
      if shuffled_music.length%2 == 0
        shuffled_music.push(filenames[right_half])
        right_half = right_half + 1
      else
        shuffled_music.push(filenames[left_half])
        left_half = left_half + 1
      end
      counter += 1
    end
    filenames = shuffled_music
  end

  arr = []
  cut = rand(length)
  idx = 0

  while idx < length
    arr.push(filenames[(idx+cut)%length])
    idx += 1
  end
 arr

end

filename = "/Users/Sarah/Music/Playlists/brilliant_playlist.m3u"
songs = []
songs_to_add = Dir["/Users/Sarah/Music/*.mp3"]
songs_to_add.each do |s|
  songs.push s
  end

almost_playlist = (music_shuffle songs).join("\n")

File.open filename, "w" do |f|
    f.write almost_playlist
end