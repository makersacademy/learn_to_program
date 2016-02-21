Dir.chdir "/Users/jojo/Projects/tracks"

playlist    = Dir["**/*.mp3"]

playlist.shuffle

File.open "playlist.m3u", "w" do |f|
  playlist.each do |mp3|
    f.write mp3+"\n"
  end
end

puts "Finished"
