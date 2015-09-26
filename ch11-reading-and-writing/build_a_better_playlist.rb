def music_shuffle filenames

  filenames = filenames.sort

  2.times do

    shuf = []

    mid = filenames.length / 2
    shuf1 = filenames[0..mid-1]
    shuf2 = filenames[mid..filenames.length]
    
    flg = 0
    while shuf.length < filenames.length
      if flg == 0
        flg = 1
        x=shuf2.shift
      else
        flg = 0
        x = shuf1.shift
      end
      shuf << x if x != nil
    end
    filenames = shuf
  end

  ary = []
  div = rand(filenames.length)
  i = 0

  while i < filenames.length
    ary.push(filenames[(i+div)%filenames.length])
    i += 1
  end
  ary
end
songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
          'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts(music_shuffle(songs))
