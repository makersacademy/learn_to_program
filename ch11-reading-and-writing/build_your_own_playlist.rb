def shuffle arr

  iterations = arr.length
  shuffled = []

  while arr.length > 0
    r = rand(arr.length)
    shuffled << arr.delete_at(r)
  end

shuffled
end


music_tracks = Dir['**/*.mp3']
shuffled_music_tracks = shuffle(music_tracks)

File.open 'playlist.m3u', 'w' do |file|
  shuffled_music_tracks.each do |track|
    file.write "#{track} \n"
  end
end

puts "Playlist complete."
