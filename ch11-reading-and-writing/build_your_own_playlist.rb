music_files  = Dir['/Users/Tom/Music/iTunes/iTunes Media/Music/**/*.{mp3,MP3,avi,AVI,m4a,M4A}']

puts "How many songs would you like in your playlist?"
playlist_length=gets.chomp.to_i

playlist_files = music_files.sample(playlist_length)
files=playlist_files.join("\n")

puts "Enter Playlist Name"
playlist_name=gets.chomp
playlist_name<<".m3u"

Dir.chdir '/Users/Tom/Desktop/Playlist'

File.open playlist_name, 'w' do |f|
	f.write files
end

