def shuffle arr
  mixer = Random.new
  repeater = arr.size - 1
  mixed = []
  while arr.length > 0 
    m = mixer.rand(0..arr.size - 1)
    mixed << arr.delete_at(m)
  end

 mixed 

end

songs_path_dir = "C:/Users/Public/Music/Sample Music/"

song_names =  Dir[songs_path_dir + '*.mp3']

song_names = shuffle song_names

filename = 'playlist.m3u'

File.open filename, 'w' do |song|
	song.puts(song_names)
end
