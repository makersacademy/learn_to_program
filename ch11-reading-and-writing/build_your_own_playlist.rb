

look_at_files = Dir['/Users/anthonyepstein/Desktop/SCARY2/**/*.mp3']

Dir.chdir '/Users/anthonyepstein/Desktop/SCARY'

filename = 'new_playlist.m3u'

str = ""

look_at_files.shuffle!

files = look_at_files.each { |x| str += "#{x}\n" }



File.open filename, 'w' do |f|
	f.write str
end

