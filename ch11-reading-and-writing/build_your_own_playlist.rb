Playlist = Dir["**/*.{mp3,MP3}"]
Playlist.shuffle

puts "What's the name of this playlist: "
file_name = gets.chomp

File.open file_name, 'w' do |n|
	Playlist.each do |name|
		n.write name + "\n"
	end
end