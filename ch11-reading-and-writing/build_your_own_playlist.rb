def shuffle array
	array.shuffle
end

all_m4a = shuffle(Dir['**/*.m4a'])

File.open 'playlist.m3u', 'w' do |f|
	all_m4a.each do |m4a|
		f.write m4a+"\n"
	end
end

puts "Completed!"