def shuffle(arr) # include shuffle method to call
  shuffled_list = []
  unshuffled_list = []
  random_element = arr.sample # gets a random element from the arr
  random_index = arr.index(random_element) # gets the corresponding index to the element
  shuffled_list << random_element # adds the element to the shuffled_list
  arr.slice!(arr.index(random_element)) # removes the random element from the arr
  unshuffled_list = arr # reassigns unshuffled_list to arr

  while unshuffled_list.count > 0 # whilst unshuffled_list still contains elements
  	shuffled_list << shuffle(unshuffled_list) # recursion: repeat the shuffle method taking unshuffled_list as the parameter
  end
  shuffled_list.compact.flatten 
end

Dir.chdir("/Users/sity/Desktop/Music") # navigate to the directory where the music is you want to search

playlist = Dir["*SOP*"] # create an array of all the results in the directory that include "SOP" and assign it to the variable playlist
shuffled_playlist = shuffle(playlist) # shuffle the playlist
filename = "SOPRANOS.m3u" # create a file with the name of your playlist with the .m3u extension
File.open filename,'w' do |f| # open the filename and create a file for each...
	shuffled_playlist.each do |title| # iteration of each title in the shuffled_playlist array...
		f.write title + "\n" # that writes the title with a newline so that it recognises the track
	end
end
