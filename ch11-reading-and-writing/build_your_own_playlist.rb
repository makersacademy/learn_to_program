# I assumed he wanted people to pick which songs out of all music files they wanted on their playlist
# Ask user what names they want on their playlist
# Search through music directory for .ogg/.mp3 files with those names
# Take those files and make into a playlist (with .m3u extension)
# Make files shuffle 

Dir.chdir '~/Desktop'

playlist = ""

	until song == 'finished'
		puts "What songs (please give filename) would you like to add? When finished write 'finished'."
		song = gets
		playlist << song
	end

filename = 'Playlist.m3u'

File.open filename, 'w' do |f|
	f.write playlist
end

def shuffle list
	arr = list.split("\n") #turn playlist into array
	shuffled_array = []
	arr.each { |item| shuffled_array.insert(rand(shuffled_array.length - 1), item)}
	shuffled_array.join("\n") #turn array back into a string
end

shuffle filename

