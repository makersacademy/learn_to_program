music_files = (Dir['F:/**/*.{MP3,mp3}'])

File.open 'music/rock/Muse/track_12.mp3', 'w' do |f|
  music_files.each do |mp3|
    f.write mp3 << "\n"
  end
end


