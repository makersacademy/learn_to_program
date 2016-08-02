Dir.chdir '/Users/Joey/Music/iTunes/iTunes Media/Apple Music'

playlist = Dir['**/*/*.m4p'].shuffle
Dir.chdir '/Users/Joey/Desktop'
File.open("playlist.m3u", "w") { |io| playlist.each do |list|
	io.write list+"\n"
end
  }
# your code here