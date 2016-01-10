# using the shuffle method as defined above

all_oggs = shuffle(Dir['**/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|
  all_oggs.each do |ogg|
    f.write ogg+"\n"
  end
end

puts 'Done!'


m4a = Dir['/Users/frazerwatson/Desktop/music/*.m4a']
all_m4a = shuffle m4a

File.open 'playlist.m3u', 'w' do |f|
  all_m4a.each do |m4a|
    f.write m4a+"\n"
  end
end

puts all_m4a