require 'yaml'

def yaml_save object, filename
    File.open filename, 'w' do |f|
    f.write(object.to_yaml)
    end
end

def yaml_load filename
    yaml_string = File.read filename
    YAML::load yaml_string
end

def shuffle arr

  shuffled_arr = [] #Start with empty array to collect shuffled items

  while arr.length > 0 #Set point at which recursion should stop

    rand_index = rand(arr.length) #Randomly pick one element of the array
    curr_index = 0  #Set back to 0 before going around again
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuffled_arr.push item #If it's the random index one then chuck it into the shuffled pile
      else
        new_arr.push item #Chuck the others back to be 'recursed'...
      end
      curr_index = curr_index + 1
    end

    arr = new_arr
  end

  return shuffled_arr
end

# Find music files to add to the playlist.
#pic_names = Dir['F:/**/*.jpg']
mp3tracks = Dir['C:/Users/Lenovo/Music/Rubyplaylist/**/*.mp3']

#Shuffle it...
mp3tracks_shuffle = shuffle mp3tracks

#Go to directory in which to place the playlist
Dir.chdir 'C:/Users/Lenovo/Music/Rubyplaylist'

puts 'What would you like to call this playlist?'
playlist = gets.chomp
playlist = playlist + ".m3u"
puts
print "Creating playlist of all #{mp3tracks.length} music files: "

# We save it...
yaml_save mp3tracks_shuffle, playlist

# We load it...
read_playlist = yaml_load playlist

# We check it matches...
puts(read_playlist == mp3tracks_shuffle)
