# Shuffle method:
def shuffle arr
  shuffled = []

  while arr.length > 0
    rand_index = rand(arr.length)
    index = 0
    new_arr = []

    arr.each do |x|
      if index == rand_index
        shuffled.push x
      else
        new_arr.push x
      end

      index = index + 1
    end

    arr = new_arr
  end

  shuffled

end

# Playlist:
all_mp3s = shuffle(Dir['**/*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
  all_mp3s.each do |mp3|
    f.write mp3+"\n"
  end
end

puts "Complete!"
