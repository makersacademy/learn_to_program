Dir.chdir "/Users/HKP/Music/"

playlist = Dir["**/*.mp3"]
playlist.shuffle.shuffle

File.open "playlist.m3u", "w" do |f|
  playlist.each do |file|
f.write "#{file}\n"
end
end