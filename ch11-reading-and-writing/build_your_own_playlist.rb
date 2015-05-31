def shuffle stuff
	stuff.sort_by{rand}
end

music = shuffle(Dir['**/*.mp3'])

File.open 'music.m3u', 'w' do |f|
	music.each do |mp3|
		f.write mp3+"\n"
	end
end
puts 'Done!'