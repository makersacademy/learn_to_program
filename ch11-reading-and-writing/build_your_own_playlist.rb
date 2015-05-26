# /usr/bin/env ruby

Dir.chdir "/Users/nhughes/Music/"

puts "What would you like to call this playlist"
playlist_name = gets.chomp

File.open(playlist_name + ".m3u", "w+") do |f|
	Dir.foreach("iTunes/iTunes Media/Music/Unknown Artist/Unknown Album") do |sound|
		if sound.end_with? ".mp3"
			f.write("music/sound-effects/Miscellaneous/#{sound}\n")
		end
	end
end

