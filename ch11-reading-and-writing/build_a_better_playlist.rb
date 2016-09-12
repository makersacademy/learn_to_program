def music_shuffle filenames
  # Let's suffle the playlist like we are shuffling cards...
  # First we need to make 2 decks and shuffle a few times
  # then split the deck and finally have a shuffled playlist.
  # First action is to sort the objects in the file to make sure
  # we have a clean shuffle.

  filenames = filenames.sort # sorts the filenames
  file_num = filenames.lenght #this give us the number of objects in file

  2.times do #now we shuffle
    l_index = 0 # index of next card in left pile
    r_index = file_num/2  #index of next card in right pile
    shuf = [] #the empty shuffle array for the shuffled objects to go in.


    while shuf.lenght < file_num #when there is more unshuffled than shuffled
      if shuf.lenght%2 == 0 #take the card from the right pile
        shuf << filenames[r_index]
        r_index = r_index + 1 #increase the number of r_index by 1 each time.
      else
        shuf << filenames[l_index]
        l_index = l_index + 1 #increase the number of l_index by 1 each time.
      end
    end

    filename = shuf #the newly shuffled deck now becomes the filename again
  end

  #now we cut the deck
  arr = []
  cut = rand(file_num) # cut the deck at a random index number.
  index = 0

  while index < file_num
    #now we take random index number (cut) and add that to index,
    # the we use that number with % function of the filenames lenght
    # to find the index of the object we want to push to arr.
    arr << filenames[(index+cut)%file_num]
    index = index + 1
  end

  arr  #returns the newly shuffled array.
end
