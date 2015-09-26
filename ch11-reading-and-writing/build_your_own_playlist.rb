Dir.chdir('/Users/mahmudhussain/documents/makers_mp3/playlist')

# First we find all of the music to be moved.
music_list = Dir['/Users/mahmudhussain/documents/makers_mp3/*.mp3']
# puts music_list

file_name = File.new("playlist.m3u",  "w+")

music_list.each do |music_file|
	# puts music_file
	file_name.write music_file + "\n"
end
