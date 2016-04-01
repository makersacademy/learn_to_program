music = shuffle(Dir['**/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|
  music.each do |music|
    f.write music + "\n"
  end
end
