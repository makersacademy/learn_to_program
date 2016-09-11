# shuffle method

def shuffle arr 
shuf = [] # bulding array
while arr.length > 0 

# pick one random element from the array. 
rand_index = rand(arr.length) 
# Now go through each item in the array, 
# putting them all into new_arr except for the 
# randomly chosen one, which goes into shuf. 
curr_index = 0 
new_arr = [] 

arr.each do |item| 
	if curr_index == rand_index 
		shuf.push item # a random file is pushed
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

############################
# creates a "playlist" file
# that lists in random order
# the flac music files in the
# current directory
# run this .rb file from the folder
# you want the playlist to be made


all_flac = shuffle(Dir['**/*.flac'])

File.open 'playlist.m3u', 'w' do |f| 
	all_flac.each do |flac_files| 
		f.write flac_files+"\n" 
	end 
end 
puts "Done! See current working folder to see the playlist file"