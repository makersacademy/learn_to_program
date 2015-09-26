Dir.chdir ('/Users/Admin/Desktop/Music_Test')
songs = Dir['/Users/Admin/Desktop/Music_Test/**/*.mp3']

f = File.new('testPlaylist.m3u', 'w+')

songs.shuffle!

songs.each do |item|
	f.write(item + "\n")
end

puts "Completed."	



# first find all mp3 files and their directories
# put them into array
# make a new empty file wherer the diretories should go

# go through the array, putting each element into the new file
# while doing this shuffle them, or pick the element randomly

