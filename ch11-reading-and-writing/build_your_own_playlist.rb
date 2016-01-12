require_relative "../ch10-nothing-new/shuffle"

mp3_list = Dir["/Users/GotWai/**/*.mp3"]

mp3_list = shuffle(mp3_list)

file_name = "playlist.m3u"

File.open file_name, 'w' do |f|
	mp3_list.each do |x|
		f.write(x + "\n")
	end
end
