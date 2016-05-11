song_array = Dir["/Users/ApoorvaSaxena/Desktop/Ap_Ruby/*.mp3"]
song_array.shuffle!
filename = 'playlist.m3u'
File.open filename, 'w' do |f|
	f.write song_array
end

