def music_shuffle filenames
  # split list in half
  # remove front file from list and add to shuffled list
  # repeat until all files are gone
  # consider case when file list has odd length
  # do this twice
  # then cut the list at a random place and rearrange it based on this cut

  # i had to look at his solution to figure out what the hell i was supposed to do, but i figured out the code myself

  number_of_files = filenames.length

  # shuffle the files twice
  2.times do
    first_half = filenames[0...number_of_files/2]       # split the list into two halves
    second_half = filenames[number_of_files/2..-1]
    shuffled_files = []                                 # to store the shuffled list on each iteration

    while first_half.size > 0 do
      shuffled_files << first_half.shift                # move a card from the first half
      shuffled_files<< second_half.shift                # move a card from the second half
    end

    shuffled_files << second_half.shift if second_half.size > 0   #if it's an odd sized file list, append the remaining file

    filenames = shuffled_files                          # update the filenames list so we can repeat
  end

  cut_index = rand(number_of_files)                     #random index to cut the list at

  first_half = filenames[0...cut_index]                 #split the deck into two at this random place
  second_half = filenames[cut_index..-1]

  return second_half + first_half                       #rearrange the halves

end