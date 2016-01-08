# your code here
Dir.chdir'/Users/sorry/Downloads'
mp3 = (Dir['/Users/sorry/Downloads/**/*.{mp3}']).sample(Dir['/Users/sorry/Downloads/**/*.{mp3}'].length)

File.open 'playlist.m3u', 'w' do |f|
	mp3.each do |x|
		f.write x
	end
end
puts 'finished! :D Enjoy!'