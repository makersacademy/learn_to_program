def sort arr
  recursive_sort arr, []
end


def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array.length == 0
  smallest = unsorted_array[unsorted_array.length-1]

  unsorted_array.each do |word|
    smallest = word if word < smallest
  end

  unsorted_array.slice!(unsorted_array.index{ |word| word == smallest })
  sorted_array << smallest

  recursive_sort unsorted_array, sorted_array
end




#
# So, we want to sort an array of words, and we know how to find out which of
#
# two words comes first in the dictionary (using <).
#
# What strikes me as probably the easiest way to do this is to keep two more
#
# lists around: one will be our list of already-sorted words, and the other will
# be our list of still-unsorted words. We’ll take our list of words, find the
#
# “smallest” word (that is, the word that would come first in the dictionary),
#
# and stick it at the end of the already-sorted list. All of the other words go into
#
# the still-unsorted list. Then you do the same thing again but using the still-
# unsorted list instead of your original list: find the smallest word, move it to
#
# the sorted list, and move the rest to the unsorted list. Keep going until your
#
# still-unsorted list is empty.
