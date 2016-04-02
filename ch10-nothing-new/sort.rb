=begin

rescue So, we want to sort an array of words, and we know how to find out which of two words comes first in the dictionary (using <).
What strikes me as probably the easiest way to do this is to keep two more lists around: one will be our list of already-sorted words, and the other will be our list of still-unsorted words. We’ll take our list of words, find the “smallest” word (that is, the word that would come first in the dictionary), and stick it at the end of the already-sorted list. All of the other words go into the still-unsorted list. Then you do the same thing again but using the still- unsorted list instead of your original list: find the smallest word, move it to the sorted list, and move the rest to the unsorted list. Keep going until your still-unsorted list is empty.
That doesn’t sound too bad, but it’s keeping all of the details straight that makes it so tricky.  Go ahead and try it, and see how it looks. In fact, try it twice: once using recursion and once without. With the recursion, you might need a wrapper method, a tiny method that wraps up another method into a cute little package, like this:
def sort some_array # This "wraps" recursive_sort. recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array # Your fabulous code goes here.
end
What was the point of the wrapper method? Well, recursive_sort took two parameters, but if you were just trying to sort an array, you would always have to pass in an empty array as the second parameter. This is a silly thing to have to remember. Here, the wrapper method passes it in for us, so we never have to think about it again.
When you’re done, make sure to test your code! Type in duplicate words and things like that. A great way to test would be to use the built-in sort method to get a sorted version of your list right away. Then, after you have sorted it for yourself, make sure the two lists are equal.
=end

#How Chris Pine would do it
def sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{|x| x < middle}
  more = arr.select{|x| x >= middle}

  sort(less) + [middle] + sort(more)
end

# p(sort(['can','feel','singing','like','a','can']))

#How you could do it
=begin
def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end
  # So if we got here, then it means we still # have work to do.
  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object|
    if tested_object < smallest
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
  end

  # Now "smallest" really does point to the
  # smallest element that "unsorted" contained,
  # and all the rest of it is in "still_unsorted". l
  sorted.push smallest

  rec_sort still_unsorted, sorted
end

# puts(sort([' can' ,' feel' ,' singing' ,' like' ,' a' ,' can' ]))
=end