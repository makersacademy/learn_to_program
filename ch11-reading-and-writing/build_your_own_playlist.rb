Dir.chdir "/Users/junyuanxue/Music/Smash"

music = Dir['*.m4a'].shuffle
p music
File.open "smash_playlist.m3u", "w" do |f|
  music.each do |song|
    f.write "#{File.basename song}\n"
  end
end

puts "Playlist created!"
