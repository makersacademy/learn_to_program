require 'yaml'

def playlist filename
	name = filename
	Dir.chdir 'C:./'
	music = Dir['C:/**/*.mp4']
	music = music.to_yaml
	File.open filename, 'w' do |f|
		f.write music
	end
	puts filename
	read_string = File.read filename
	read_array = YAML::load read_string

	read_array.sort_by{rand}

end
