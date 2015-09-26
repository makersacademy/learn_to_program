def music_shuffle filenames
  # your code here

  def shuffle ary
    ary.sort_by{rand}
  end

  filenames = filenames.sort
  mid = rand(filenames.length)
  
  shuf1 = filenames[0..mid]
  shuf2 = filenames[(mid+1)..filenames.length]

  shuffle(shuf1)+shuffle(shuf2)

end
