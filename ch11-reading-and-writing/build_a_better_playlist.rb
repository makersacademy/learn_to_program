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

def music_shuffle filenames
  # your code here
end


filename = 'playlist.txt'

yaml_save Dir['/Users/sambroughton/Music/iTunes/iTunes Media/Music/**/*.mp3'], filename

playlist = yaml_load filename
p playlist
puts music_shuffle playlist