def music_shuffle(filenames)
  filenames = filenames.sort
  length = filenames.length
  2.times do
    l_idx = 0
    r_idx  = length / 2
    shuff = []
    while shuff.length < length
      if shuff.length % 2 == 0
        shuff.push(filenames[r_idx])
        r_idx += 1
      else
        shuff.push(filenames[l_idx])
        l_idx += 1
      end
    end
    filenames = shuff
  end
  arr = []
  cut = rand(length)
  idx = 0
  while idx < length
    arr.push(filenames[(idx + cut) % length])
    idx += 1
  end
  arr
end

songs = ["aa/bbb", "aa/ccc", "aa/ddd", "AAA/xxxx", "AA/yyyy", "AAA/zzzz", "foo/bar"]
puts music_shuffle(songs)
