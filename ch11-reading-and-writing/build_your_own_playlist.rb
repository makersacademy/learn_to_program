all_music = (Dir['**/*.ogg']).shuffle

File.open 'playlist.m3u', 'w' do |f|
  all_music.each do |music|
    f.write music+"\n"
  end
end
