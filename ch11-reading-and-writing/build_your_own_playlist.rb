music = Dir['**/*.mp3']

File.open('playlist.m3u', 'w') do |f|
  music.each { |song| f.write(song + "\n") }
end
