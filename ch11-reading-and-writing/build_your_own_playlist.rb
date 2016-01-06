songs_path_dir = "C:/Users/Public/Music/Sample Music/"

song_names =  Dir[songs_path_dir + '*.mp3']

song_names.shuffle!

filename = 'playlist.m3u'

File.open filename, 'w' do |song|
	song.puts(song_names)
end
