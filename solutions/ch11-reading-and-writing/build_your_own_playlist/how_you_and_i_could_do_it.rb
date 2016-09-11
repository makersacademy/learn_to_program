def shuffle arr
  shuf = []
  while arr.length > 0
    rand_index = rand(arr.length)

    new_arr = []
    arr.each do |item|
      if curr_index == rand_index
        shuf.push item
      else
        new_arr.push item
      end
      curr_index = curr_index + 1
    end

    arr = new_arr
  end
shuf
end

all_oggs = shuffle(Dir['**/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|
  all_oggs.each do |ogg|
    f.write ogg+"\n"
  end
end

puts 'Done!'
