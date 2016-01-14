def shuffle arr 
  arr.shuffle
end

Dir.chdir "/Users/jono442244/Music/Music/CodingPlaylist"

all_mp3s = shuffle(Dir["*.mp3"])

File.open "CodingTechno.m3u", "w" do | f |
	all_mp3s.each do | mp3 |
	f.write mp3+"\n"
	end 
end

puts "Finito!"