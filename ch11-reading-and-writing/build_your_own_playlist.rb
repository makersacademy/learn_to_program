def shuffle arr
  shuffled_array = []
  while !arr.empty?
  	random_num = rand(arr.length)
  	shuffled_array << arr[random_num]
  	arr.delete_at(random_num)
  end
  shuffled_array
end

Dir.chdir('/Users/paulkenrick/Desktop/Test_Playlist')
all_songs = Dir['/Users/paulkenrick/Music/iTunes/iTunes Media/Music/*/*/*.m4a']

song_string = shuffle(all_songs).first(10).join("\n")

File.open('playlist.m3u', 'w') do |f|
	f.write(song_string)
end

puts song_string
