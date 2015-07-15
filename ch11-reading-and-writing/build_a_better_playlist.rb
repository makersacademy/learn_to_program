def music_shuffle filenames
  filenames = filenames.sort
  len       = filenames.length  

  2.times do
    lef_indx = 0
    rig_indx = len/2
    shuf = []
    
    while shuf.length < len
      if shuf.length % 2 == 0 
        shuf << filenames[rig_indx]
        rig_indx += 1
      else
        shuf << filenames[lef_indx]
        lef_indx += 1
      end
    end
    filenames = shuf
  end
  arr =[]
  cut = rand(len)
  idx = 0

  while idx < len
    arr << filenames[(idx+cut)%len]
    idx += 1
  end
  
  arr

end
