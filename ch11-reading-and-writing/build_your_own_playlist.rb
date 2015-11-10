def build_playlist

puts "What would you like to call your playlist?"
play_name = gets.chomp + ".m3u"

file_list = shuffle(Dir["/users/chriswynne/**/*.mp3"])
#list = shuffle(file_list)
File.open play_name, 'w' do |f|
  file_list.each {|song| f.puts(song)}
end
puts "Playlist created!"
end

def shuffle(arr)
  rec_shuf(arr, [])
end

def rec_shuf(arr, out)
  return out << arr[0] if arr.length == 1
  pos = rand(arr.length)
  out << arr[pos]
  arr.delete_at(pos)
  rec_shuf(arr, out)
end

build_playlist
