
def shuffle arr

shuf = []

while arr.length > 0
# Randomly pick one element of the array.
#While elements still exist in "arr", the while loop will continue to add elements to the "shuf" array until nothing is left in "arr"

rand_index = rand(arr.length)
# Now go through each item in the array,
# putting them all into new_arr except for the
# randomly chosen one, which goes into shuf.

curr_index = 0
new_arr = []

arr.each do |item|
if curr_index == rand_index
	shuf.push item
else
	new_arr.push item
end
	curr_index = curr_index + 1
end
# Replace the original array with the new,
# smaller array.

arr = new_arr

end
shuf
end


Dir.chdir '/home/alaan/Desktop/Music1'

track_number = Dir['*.{mp3, MP3}']

playlist_array = []

track_number.each { |track|
playlist_array.push(track)
}

playlist_items = ''
shuffled_playlist = shuffle playlist_array

shuffled_playlist.each do |x|
playlist_items += x + "\n"
end

filename = 'Xenoverse.m3u'

# shuffle playlist_array

File.open filename, 'w' do |f|
	f.write playlist_items
end

playlist_read = File.read filename

filename.run


