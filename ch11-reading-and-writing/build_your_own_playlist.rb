directory = '/Users/lukeaveil/projects/learn_to_program/music'

playlist = Dir['#{directory}**/*.{mp3, MP3}'].shuffle

File.open 'playlist.m3u' , 'w' do |x|
	playlist.each do |song|
		x.write song + "\n"
	end
end