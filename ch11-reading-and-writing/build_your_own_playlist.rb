music = shuffle(Dir['/Users/felixharrison/music/**/*.mp3'])

File.open 'Playlist.m3u', 'w' do |y|
  music.each do |mp3|
    y.write mp3 + "\n"
  end
end

puts 'Done!'
