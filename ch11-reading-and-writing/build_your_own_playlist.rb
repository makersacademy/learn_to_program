# your code here
Dir.chdir "/Users/Heather/Music/Test"

track_names = Dir['./**/*.mp3']

my_playlist = track_names.shuffle.join("\n")

puts "Enter name of new playlist"

playlist_name = gets.chomp

while File.exist?(playlist_name)
	puts "filename already exists, pick another"
	playlist_name = gets.chomp
end

File.open playlist_name, 'w' do |f| f.write my_playlist
	end

puts my_playlist
