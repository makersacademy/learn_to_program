def music_shuffle filenames
  filenames.sort!
  len = filenames.length

  2.times do
    l = 0
    r = len / 2
    shuf = []
  
    while shuf.length < len
      if shuf.length % 2 == 0
        shuf << filenames[r]
        r += 1
      else
        shuf << filenames[l]
        l += 1
      end
    end

    filenames = shuf
  end

  arr = []
  cut = rand(len)
  i = 0

  while i < len
    arr << filenames[(i + cut) % len]
    i += 1
  end

  arr
end
