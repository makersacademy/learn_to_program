def shuffle (arr)
  arr.sort_by{rand}
end

# using the shuffle method as defined above
all_oggs = shuffle(Dir['**/*.ogg'])
File.open 'playlist.m3u', 'w' do |f| 
	all_oggs.each do |ogg|
		f.write ogg+"\n" 
	end
end
puts 'Done!'