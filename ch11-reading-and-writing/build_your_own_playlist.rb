def shuffle arr
  shuffled_arr = []
  arr.each do |x|
    pos = rand(0..shuffled_arr.length) 
    shuffled_arr.insert(pos, x)
  end
  return shuffled_arr
end

track_names = shuffle Dir['Music/**/*.{mp3,wma}']

puts track_names

filename = 'my_playlist.m3u'

File.open filename, 'w' do |f|
  f.write track_names
end
