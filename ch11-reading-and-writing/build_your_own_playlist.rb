Dir.chdir('/Users/mahmudhussain/documents/makers_mp3/playlist')

# First we find all of the music to be moved.
music_list = Dir['/Users/mahmudhussain/documents/makers_mp3/*.mp3']
# puts music_list

file_name = File.new("playlist.m3u",  "w+")

while music_list.length != 0
	a = rand(music_list.length)
	#shuffle = music_list.sample(a)
	file_name.write music_list[a] + "\n"
	music_list.delete_at(a)
end

# music_list.sample do |music_file|
# 	# puts music_file
# 	file_name.write music_file + "\n"
# end

# music_list.each do |music_file|
# 	# puts music_file
# 	file_name.write music_file + "\n"
# end
