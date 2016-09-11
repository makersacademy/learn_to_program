def music_shuffle filenames
  len = filenames.length
  #obtian the files length
  2.times do
    l_idx = 0
    r_idx = len / 2
    shuf = []
#create a vegas style deck shuffle
    while shuf.length < len
      if shuf.length % 2 == 0
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end
    filenames = shuf
  end

  arr = []
  cut = rand(len)
  idx = 0
#randomly cut the deck via the filename length
  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end
#push filenames in the open array
arr
end
#output the array

songs = ['aa/bbb',   'aa/ccc',   'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts(music_shuffle(songs))
