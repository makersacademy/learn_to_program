# Original sort method:
#
# words = []
#   while true
#       word = gets.chomp
#   break if word.empty?
#     words << word
#   end
# puts words.sort

# So, we want to sort an array of words, and we know how to find out which of
# two words comes first in the dictionary (using <).
# What strikes me as probably the easiest way to do this is to keep two more
# lists around: one will be our list of already-sorted words, and the other will
# be our list of still-unsorted words.
# We’ll take our list of words, find the
# “smallest” word (that is, the word that would come first in the dictionary),
# and stick it at the end of the already-sorted list. All of the other words go into
# the still-unsorted list. Then you do the same thing again but using the still-
# unsorted list instead of your original list: find the smallest word, move it to
# the sorted list, and move the rest to the unsorted list. Keep going until your
# still-unsorted list is empty.

def sort arr
  recursive_sort arr, []
end

def recursive_sort(unsorted_arr, sorted_arr)
  if unsorted_arr.length <= 0     #ie: If there's none left to be sorted
    return sorted_arr             #then reuturn the sorted array, we've done them all
  end

  new_unsorted_arr = []           #new empty array
  last_word = unsorted_arr.pop    #using .pop, remove last element in unsorted_arr & point variable "last_word" at it

  unsorted_arr.each do |word|        #for every element in unsorted_arr
    if word < last_word              #if the word in question is 'smaller' than the last_word...
      new_unsorted_arr << last_word  #...then add the word pointed to by last_word to the new_unsorted_arr
      last_word = word               #and replace last_word with this new 'smaller' word
    else
      new_unsorted_arr << word      #if the word in quesiton isn't smaller than last_word, just add the word to the new_unsorted_arr
    end
  end
  sorted_arr << last_word           #add the last_word to the end of the sorted_arr
  unsorted_arr = new_unsorted_arr

  recursive_sort(new_unsorted_arr, sorted_arr)
end


# How Chris Pine would have done it:
# def sort arr
#   return arr if arr.length <= 1
#
#   middle = arr.pop
#   less = arr.select{|x| x < middle}   #.select returns a new array with the selected elements, but leave the original array unchanged.
#   more = arr.select{|x| x >= middle}
#
#   sort(less) + [middle] + sort(more)
# end
