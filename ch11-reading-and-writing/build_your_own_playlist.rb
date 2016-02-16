def shuffle arr
  arr.sample(arr.length)
end

#load list of songs in array
array = Dir['/home/han/ruby/Pine/solution/music/*.mp3']
#shuffled array
shuffled_music = shuffle(array)
#copy array into file and name playlist.m3u
#Ask user for name of playlist

filename = 'shuffled music playlist.m3u'

File.open filename, 'w' do |f|
f.write shuffled_music.join("\n")
end

puts "Done...Your playlist #{filename} is ready"