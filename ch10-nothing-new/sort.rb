# Which of two words comes first in the dictionary (using <)
# Keep a list of already-sorted words, the other is a list of still-unsorted words
#Take our list of words, find the smallest word (that would come first in the dictionary)
# and stick it at the end of the alread-sorted list
# All of the other words go into the still unsorted list
# Then do the same thing still using the unsrted list instead of your original listFind the msallest words
# Move it to the sorted list
# Move the rest to the unsorted list
# Keep going until your still-unsorted list is empty

def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array

  # If the unsorted array has no items in it, return the sorted array
  if unsorted_array.length <= 0
    return sorted_array
  end

  # Remove the last word from the unsorted array and put it into the variable smallest
  smallest = unsorted_array.pop

  # Create a new array called still_unsorted to hold all the other words
  still_unsorted = []

  # For each word in the unsorted array, see if it's smaller than the 'smallest' word that you took earlier
  # If it is, put the smallest word back into the array, and replace 'smallest' with this new word
  # If word is not smaller than the smallest, then push this word into the still unsorted array

  unsorted_array.each do | word |
    if word < smallest
      still_unsorted.push smallest
      smallest = word
    else
      still_unsorted.push word
    end
  end

  # Put the smallest word into the sorted array
  sorted_array.push smallest

  # Now call the same recursive sort method to sort out the still_unsorted words
  recursive_sort still_unsorted, sorted_array

end
