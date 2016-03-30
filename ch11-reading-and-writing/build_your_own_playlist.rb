def shuffle arr
  shuffle = []

  while arr.length > 0
    rand_index = rand(arr.length)

    curr_index = 0
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuffle.push item
      else
        new_arr.push item
      end

      curr_index = curr_index + 1

  end

 arr = new_arr
end
shuffle
end

Dir.chdir '/Users/robin_heathcote/Desktop'

playlist = shuffle(Dir['/Users/robin_heathcote/Music/iTunes/iTunes Media/Music/Muse/Black Holes & Revelations/*.m4a'])

File.open 'playlist.m3u', 'w' do |f|
  playlist.each do |m4a|
    f.write m4a+"\n"
  end
end
  puts 'Done!'









