require_relative '../ch10-nothing-new/shuffle'

music_files = shuffle(Dir['/Users/yana/Desktop/music/**/*.mp3'])

filename = 'playlist.m3u'

File.open filename, 'w' do |f|
	music_files.each do |line|
		f.write line+"\n"
	end
end

puts File.read filename

