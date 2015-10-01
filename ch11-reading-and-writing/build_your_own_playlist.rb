all_mp3 = Dir['~/*.mp3']

File.open 'playlist.m3u', 'w' do |f|
	all_mp3.each do |mp3|
		f.write mp3+"\n"
	end
end
puts 'done'