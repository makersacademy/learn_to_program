def music_shuffle filenames
  # your code here
  mid = filenames.length / 2

  filenames = filenames.sort
  shuf1 = filenames[0..mid]
  shuf2 = filenames[(mid+1)..filenames.length]

#  shuf1.sort!{rand} + shuf2.sort!{rand}

   shuf=[]

  2.times do
    i = 0
    while shuf.length < filenames.length
      shuf.push shuf1[i] if i < shuf1.length
      shuf.push shuf2[i] if i < shuf2.length
      i += 1
    end

   filenames = shuf
  end

  tmp=[]
  spl=rand(filenames.length)
  i = 0

  while i < filenames.length
    tmp.push ( filenames[ (i+spl)%filenames.length ] )
    i += 1
  end

  tmp

end
