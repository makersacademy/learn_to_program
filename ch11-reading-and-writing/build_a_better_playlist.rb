def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length

  2.times do
    l_inx = 0
    r_inx = len/2
    shuf = []

    while shuf.length < len
      if shuf.length % 2 == 0
        shuf.push(filenames[r_inx])
        r_inx = r_inx + 1
      else
        shuf.push(filenames[l_inx])
        l_inx = l_inx + 1
  end
end
    filenames = shuf
  end
  arr = []
  cut = rand(len)
  inx = 0

  while inx < len
    arr.push(filenames[(inx+cut)%len])
    inx = inx + 1
end
arr
end
songs = ['aa/bbb',   'aa/ccc',   'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts(music_shuffle(songs))

