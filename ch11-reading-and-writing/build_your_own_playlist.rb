Dir.chdir 'D:/Pottomke/Music_repo'

filename = "MyPlaylist.m3u"

song_names = Dir['D:/Pottomke/Music_repo/*.{mp3}']

File.open filename, 'w' do |f|
	 song_names.each do
		|song| f.write song
		f.write "\n"
	 end
end