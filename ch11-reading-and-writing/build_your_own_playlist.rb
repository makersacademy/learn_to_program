def shuffle song_list
  playlist = []

  while song_list.length > 0
    rand_song_index = rand(song_list.length)
    current_song_index = 0
    new_song_list = []

    song_list.each do |item|
      if current_song_index == rand_song_index
        playlist.push(item)
      else
        new_song_list.push(item)
      end
      current_song_index = current_song_index + 1
    end
    song_list = new_song_list
  end

  filename = '/Users/annemariekohler/Desktop/myfavouritemusic.m3u'
  File.open filename, 'w' do |f|
    f.puts playlist
  end

end

songs = Dir["/Users/annemariekohler/**/*.{MP3,mp3}"]
shuffle songs
