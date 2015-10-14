def shuffle arr
  length = arr.length
  shuffles = length*100

  shuffles.times do |t|
    index = 0
    while index < (length -1)
      n = arr[index]
      nn = arr[index+1]

      shuffle_it = rand(length) < (length/2)

      if shuffle_it
        arr[index] = nn
        arr[index+1] = n
      end
      index += 1
    end
  end
  return arr
end


music_files = shuffle(Dir['**/*.m4a'])

File.open 'playlist.m3u', 'w' do |f|
  music_files.each do |file|
    f.write file + "\n"
  end
end
