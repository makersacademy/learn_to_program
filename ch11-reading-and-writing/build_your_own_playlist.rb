# /usr/bin/env ruby

Dir.chdir "/Users/nhughes/Music/iTunes/iTunes Media/Music/Unknown Artist/Unknown Album"

puts "What would you like to call this playlist"
playlist_name = gets.chomp

all_sounds = Dir["*.mp3"].shuffle

File.open(playlist_name + ".m3u", "w+") do |f|
	all_sounds.each do |sound|
		f.write("music/sound-effects/Miscellaneous/#{sound}\n")
	end
end

