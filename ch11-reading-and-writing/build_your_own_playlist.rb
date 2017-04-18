def save list, playlist
  File.open playlist, 'w' do |f|
    f.write(list)
  end
end

def shuffle arr
  return [] if arr.length == 0
  pivot = arr[rand(arr.size)] # randomise the pivot
  arr.delete(pivot)
  less, more = arr.partition {|e| e <=> pivot }
  shuffle(less) + [pivot] + shuffle(more)
end

Dir.chdir (Dir.home + '/Music')
puts Dir.pwd

dir_arr = (Dir.home + "/Music/**/*.mp3")
shuffled = shuffle(Dir[dir_arr])

list = ''
tracks = shuffled.each {|track| list << track + "\n"} # adds each track to list 

puts "Found #{tracks.count} tracks"
puts "What would you like to call your playlist?"

playlist = gets.chomp + '.m3u'

if !Dir.glob(playlist).empty?
  puts "That playlist already exists!"
  exit
end

save(list,playlist)