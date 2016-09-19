# Okay how do we solve this in English?
# For the purpose of comparison, we should just downcase everything
# But if it were capitalised to begin with, it ought to remain so

def dictionary_sort arr
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

    if word.downcase < smallest.downcase
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
