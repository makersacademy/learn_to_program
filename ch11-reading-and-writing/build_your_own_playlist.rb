def shuffle array
  random_array = []
  wordcount    = -1
  position     = 0
  position2    = 0

  array.each do |word|
    wordcount = wordcount + 1
  end

  while position2 <= wordcount
    position = rand(wordcount + 1)
    if array[position] != 'done'
      random_array.push array[position]
      array[position] = 'done'
      position2 = position2 + 1
    end
  end

  return random_array
end

musicfiles = shuffle(Dir['/Users/Kate/desktop/somemusicfiles/*.m4a'])

File.open 'newplaylist.m3u', 'w' do |f|
  musicfiles.each do |song|
    f.write song+"\n"
  end
end

puts "playlist made!"