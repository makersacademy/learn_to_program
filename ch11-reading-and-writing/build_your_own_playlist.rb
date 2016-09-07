Dir.chdir("/home/ants/music") do
	File.new "playlist.m3u" 
	tracks = Dir["*.mp3"]
	File.open "playlist.m3u", "w" do |f|
		tracks.each do |track|
			f.write(track)
			f.puts('')
		end
	end
end