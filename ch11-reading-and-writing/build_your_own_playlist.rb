Dir.chdir '/User/elenabardashevich/Music/iTunes'
playlist = Dir['**/*.mp3']


File.open "playlist.m3u", "w" do |f|
	playlist.each do |file|
		f.write playlist.shuffle  # your code here