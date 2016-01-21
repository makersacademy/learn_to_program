def music_shuffle filenames
  songs = filenames.sort
  size = songs.size

  2.times {
    playlist = []
    i = size/2
    while i < songs.size
      playlist << songs[i]
      if songs[i-size/2] != playlist[0]
        playlist << songs[i-size/2]
      end
      i+=1
    end
    songs = playlist
  }
  playlist =[]
  index = rand(size)
  (0...size).each do |x|
    playlist << songs[(x+index)%size]
  end
  playlist

end

# Dir.chdir '/Users/irina/Music/iTunes/iTunes Media/Music'
# songs_list = Dir['../**/*love*.mp3']

# songs_list = music_shuffle songs_list

# File.open("/Users/irina/Desktop/playlist.m3u", "w") do |f|
#   songs_list.each do |x|
#     f.write x+"\n"
#   end
# end

# puts "Playlist was created in directory: #{Dir.pwd}"

# puts songs_list
