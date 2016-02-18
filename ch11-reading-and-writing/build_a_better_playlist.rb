Dir.chdir '/Users/kevinmccarthy/Desktop'

names = Dir['/Users/**/*.mp3']

names = names.shuffle

filename = 'playlist2.m3u'

File.open filename, 'w' do |f|
	f.write names
end

def music_shuffle names
	names.each { |i|
		i.each {|i|
			i.split("/")}}
  #
end
