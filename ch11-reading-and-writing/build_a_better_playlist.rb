def music_shuffle filenames
 filenames = filenames.sort
 len = filenames.length

2.times do
  l_index = 0
  r_index = len/2
  shuf = []


  while shuf.length < len
    if shuf.length%2 == 0
      shuf.push(filenames[r_index])
      r_index = r_index + 1
    else
      shuf.push(filenames[l_index])
      l_index = l_index + 1
    end
  end

  filenames = shuf

end

arr = []
cut = rand(len)
idx = 0


while idx < len
  arr.push(filenames[(idx+cut)%len])
  idx = idx + 1
end


arr

end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
       'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts (music_shuffle(songs))
