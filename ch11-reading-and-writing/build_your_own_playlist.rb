def shuffle playlist
  new_playlist = []

  while playlist.length > 0
  	rand_number = rand(playlist.length)
  	new_playlist << playlist[rand_number]
  	playlist.delete_at(rand_number)
  end
  return new_playlist
end

File.open 'playlist.m3u', 'w' do |f|
	f.write playlist
end

songs = shuffle(Dir["/Users/Jazzy/Music/*.mp3"])

