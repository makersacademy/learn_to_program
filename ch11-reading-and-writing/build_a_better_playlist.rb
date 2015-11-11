def music_shuffle filenames
  #sorts the files to start
  filenames.sort!
  
  #runs the riffle_shuffle method twice
  filenames = riffle_shuffle filenames
  filenames = riffle_shuffle filenames
  
  #cuts the 'deck' and returns 
  listB = filenames[0...(filenames.length / 2)]
  filenames -= filenames[0...(filenames.length / 2)]
  filenames += listB
end

def riffle_shuffle arrayA
  arrayB = arrayA[0...(arrayA.length / 2)]
  arrayA -= arrayA[0...(arrayA.length / 2)]
  arrayC = []

  until arrayA.empty? && arrayB.empty?
    arrayC << arrayA.pop
    arrayC << arrayB.pop
  end
  arrayA = arrayC.reverse
end
