Dir.chdir '/Users/kevinmccarthy/Desktop'

names = Dir['/Users/**/*.mp3']

names = names.shuffle

filename = 'playlist2.m3u'

File.open filename, 'w' do |f|
	f.write names
end



