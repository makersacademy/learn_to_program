def shuffle(some_array)
	recursive_shuffle(some_array, [])
end

def recursive_shuffle(unshuffled_array, shuffled_array)
	rand_word = [] 
	if unshuffled_array.length == 0
		return shuffled_array.compact
	else
		rand_word << unshuffled_array[rand(unshuffled_array.length)]
		shuffled_array << rand_word[0]
		rand_word.each do |word|
			unshuffled_array.delete_at(unshuffled_array.index(word)) end
		recursive_shuffle(unshuffled_array, shuffled_array)	
	end
end

# Set working dir
Dir.chdir 'D:/Music/playlists/'

# search for music files
music_array =  Dir["D:/Music/Bonobo/**/*.mp3"]

# playlist = File.new("Bonobo_playlist.m3u")
#set file name
playlist_name = File.new("Bonobo_playlist.txt", "w")

File.open playlist_name, 'w' do |f|
	f.write shuffle(music_array).join("\n")
end