# your code here

#this code actually mix up properly not like shuffle
Dir.chdir'/Users/sorry/Downloads'
mp3 = (Dir['/Users/sorry/**/*.{mp3}']).sample(Dir['/Users/sorry/**/*.{mp3}'].length)

File.open 'playlist.m3u', 'w' do |f|
	mp3.each do |x|
		f.write x+"\n"
	end
end
puts 'finished! :D Enjoy!'