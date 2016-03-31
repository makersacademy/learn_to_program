require 'yaml'

def save_method list, filename
	File.open filename, 'w' do |name|
		name.write(list.to_yaml)
	end
end


string = Dir['*.mp3'] #again only working in the current directory

filename = "playlist.m3u"

save_method string, filename