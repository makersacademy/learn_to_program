def shuffle arr
	shuffled_arr = Array.new
	shuffled_arr = arr.sort_by{rand}
	shuffled_arr
end


mp3 = Dir['/Users/reissjohnson/desktop/projects/music_test/*.mp3']
all_mp3 = shuffle mp3

File.open 'playlist.m3u', 'w' do |f|
  all_mp3.each do |mp3|
    f.write mp3+"\n"
  end
end

puts all_mp3