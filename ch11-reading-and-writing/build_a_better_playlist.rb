require './ch10-nothing-new/shuffle.rb'
song_array = Dir["/Users/ApoorvaSaxena/Desktop/Ap_Ruby/*.mp3"]
arr_song = []
arr_shuffle = []
song_array.each do |song|
	arr_song << song.split('/')[-1]
end
for i in (0..arr_song.length - 1)
	k = rand(0..arr_song.length - 1)
	arr_shuffle << arr_song[k]
end

filename = 'playlist.m3u'
File.open filename, 'w' do |f|
	f.write arr_shuffle
end









