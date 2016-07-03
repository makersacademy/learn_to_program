all_music = shuffle(Dir['**/*.{ogg,OGG,mp3,MP3,wav,WAV}'])

File.open 'playlist.m3u', 'w' do |f|
  all_music.each do |ogg|
    f.write ogg+"\n"
  end
end

puts 'Done!'
