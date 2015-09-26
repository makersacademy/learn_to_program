def music_shuffle filenames
  # your code here

  filenames = filenames.sort
  mid = rand(filenames.length)
  
  shuf1 = filenames[0..mid]
  shuf2 = filenames[(mid+1)..filenames.length]

  shuf1.sort!{rand} + shuf2.sort!{rand}


  #filenames.sort.shuffle



end
