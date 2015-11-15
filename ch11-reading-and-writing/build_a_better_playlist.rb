=begin
This is my original way  - I've tried to shuffle twice then
cut the deck like Chris Pine does, but it doesn't pass rspec

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

=end

def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length

  2.times do
    l_idx = 0 # index of next card in left pile
    r_idx = len/2 # index of next card in right pile
    shuf = []
    # NOTE: If we have an odd number of "cards",
    # then the right pile will be larger.

    while shuf.length < len
      if shuf.length%2 == 0
        # take card from right pile
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        # take card from left pile
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end
  # And cut the deck.
  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end
  
  arr
end
