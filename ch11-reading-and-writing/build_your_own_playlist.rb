Dir.chdir '/Users/amyyang/Music/Test_Music'

song_name = Dir['/Users/amyyang/Music/Test_Music/**/*.m4a']

shuffle = song_name.shuffle
#shuffle the array = songs

filename = File.new('playlist.m3u','w+')
#create a new file named 'playlist.m3u'

shuffle.each do |name| 
	filename.write name
end 
