mp3 = Dir['**/*.mp3'].shuffle!

File.open 'mp3List.mp3', 'w' do |f|
	mp3.each do |item|
		f.write mp3 + "\n"
	end
end