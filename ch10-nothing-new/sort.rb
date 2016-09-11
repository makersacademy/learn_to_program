# This is a wrapper method that means we don't have to remember to open an empty
# array each time we call rec_sort. We can just call sort and pass it the 
# unsorted array as a parameter.
def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
  # This condition is met when all items have been taken from unsorted, sorted,
  # and put into sorted.
  if unsorted.length <=0
    return sorted
  end
  
  # This takes the last item in the unsorted array and assigns it to sorted
  smallest=unsorted.pop
  # This is the 3rd array in the program.
  still_unsorted=[]
  
  unsorted.each do |tested_object|
  # At this point, smallest is the last object in the array, which was removed
  # from the array by .pop
    if tested_object < smallest
      still_unsorted.push smallest
  # If any object in the array is smaller than the string popped from the end
  # then smallest is put into still_unsorted, to be dealt with later.
      smallest=tested_object
  # The string that was being tested against the original smallest is now
  # assigned to smallest, becoming the next string to be tested against the
  # contents of unsorted. This sets the variable outside this .each iterator.
  # This iterator continues until each string has been tested against the other
  # until unsorted is empty. This iterator ends and smallest is pushed to the
  # sorted array. The program then recursively calls itself, taking 
  # still_unsorted and sorted as parameters this time. The first time round it
  # took unsorted and an empty array.
    else
      still_unsorted.push tested_object
    end
  end
  sorted.push smallest
  
  rec_sort still_unsorted, sorted
end

puts (sort(['can','help me','oh god, help','keys','hmm']))