def music_shuffle filenames
  # your code here
  filenames = filenames.sort
  
  len = filenames.length
  
   2.times do
    l_idx = 0
     r_idx = len/2 
      shuf = []
      
       while shuf.length < len
      if shuf.length%2 == 0
          shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
    else
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end
    
    filenames = shuffle
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

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts(music_shuffle(songs))
