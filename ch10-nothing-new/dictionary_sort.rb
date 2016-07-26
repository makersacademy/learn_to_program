def dictionary_sort arr
  sorted_arr = []

  while arr.length > 0
  unsorted = []
  current_highest_alph = arr.pop

  arr.each do |new_word|
    if new_word.downcase < current_highest_alph.downcase
      unsorted << current_highest_alph
      current_highest_alph = new_word
    else unsorted << new_word
    end

  end
  sorted_arr << current_highest_alph
  arr = unsorted
  end

  return sorted_arr

end

#this passes rspec but not test on github test - can only assume that within
#the while clause, unsorted gets reset as [] after taking an unsorted element at
#the end of the previous loop. however, why does it pass rspec (and also works
#when i pass it through irb?) i tried to move unsorted = [] to before the while
#clause but this seemed to cause even more issues on rspec and irb (which I also
#don't understand)

#any feedback will be v much appreciated!
