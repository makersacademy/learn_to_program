def music_shuffle filenames
  # this sorting is so that the files aren't too random, which can look
  # 'clumpy' to human eyes.
  filenames = filenames.sort
  len = filenames.length
  
  # this method shuffles the 'desk' twice
  2.times do
    l_idx = 0
    # right index is half the length of the total index
    r_idx = len/2
    shuf=[]
    #r_idx will be larger than l_idx if there is an odd number of cards, hence
    # why it is dealt with first below.
    while shuf.length < len
        if shuf.length%2 == 0
        # takes card from the right pile and push them to our array, shuf
          shuf.push(filenames[r_idx])
          r_idx = r_idx + 1
      else
        # takes cards from the left pile and adds them to shuf
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
        end
    end
    
    filenames=shuf
  end
  arr=[]
  # gives a random number in the range of the array
  cut=rand(len)
  idx=0
  
  #This part cuts the deck. I don't understand it yet.
  while idx<len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end
  
  arr
end

songs= ['aa/bbb','aa/ccc','aa/ddd','AAA/xxxx','AAA/yyyy','AAA/zzzz','foo/bar']

puts(music_shuffle(songs))
puts 
puts(music_shuffle(songs))
puts 
puts(music_shuffle(songs))
puts 
