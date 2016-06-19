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

# Find music files to add to the playlist.
#pic_names = Dir['F:/**/*.jpg']
mp3tracks = Dir['C:/Users/Lenovo/Music/**/*.mp3']

#Go to directory in which to place the playlist
Dir.chdir 'C:/Users/Lenovo/Music'

puts 'What would you like to call this playlist?'
playlist = gets.chomp
playlist = playlist + ".m3u"
puts
print "Creating playlist of all #{mp3tracks.length} music files: "

# We save it...
yaml_save mp3tracks, playlist

# We load it...
read_playlist = yaml_load playlist

# We check it matches...
puts(read_playlist == mp3tracks)
