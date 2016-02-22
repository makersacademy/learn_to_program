filename = 'playlist.m3u'
song_names = Dir['../../../../../sachinkaria/downloads/*.wav']

def shuffle song_names
	5.times.song_names.shuffle
	return 
end


File.open 'playlist.m3u', 'w' do |f|

song_names.each do |song|

f.write song+"\n"

end
	read_string = File.read filename

puts(read_string == song_names)

end
