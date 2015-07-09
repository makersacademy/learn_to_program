def shuffle ar
 	shuf_ar = [ ]
	x = ar.length

	until ar == []

		y = rand(x)
		if shuf_ar[y] == nil	
			shuf_ar[y] = ar.pop
		end

	end

	return shuf_ar

end


all_mp3s = shuffle (Dir['**/*.mp3'])

File.open 'playlist.m3u', 'w' do |f| all_mp3s.each do |mp3|

f.write mp3+"\n" end

end

puts 'Done!'