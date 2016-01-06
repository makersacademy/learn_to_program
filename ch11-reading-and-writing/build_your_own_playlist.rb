def shuffle arr
	shuffled_arr = Array.new
	shuffled_arr = arr.sort_by{rand}
	shuffled_arr
end


aiffs = Dir['/Users/reissjohnson/desktop/projects/music_test/*.aiff']
all_aiffs = shuffle aiffs

File.open 'playlist.m3u', 'w' do |f|
  all_aiffs.each do |aiff|
    f.write aiff+"\n"
  end
end

puts 'Done!'
