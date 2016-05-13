def shuffle arr
  shuffled = []
  for i in 0...arr.length do
  	rand = rand(arr.length)
  	shuffled << arr[rand]
  	arr.delete_at(rand)
  end
  shuffled
end

song_names = shuffle(Dir['**/*.mp3'])

File.open 'Playlist.m3u', 'w' do |f|
  song_names.each do |x|
    f.write x +"\n"
  end
end