def shuffle(arr)
 arr.shuffle
end

all_oggs = shuffle(Dir['**/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|
  all_oggs.each do |ogg|
    f.write ogg+"\n"
  end
end

puts 'Done!'

#Pines version, no idea messing with files and didn't want to delete anything, need to come back to