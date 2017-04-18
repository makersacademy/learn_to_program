def sort arr
  return [] if arr.length == 0
  # return blank array is array's length is
  # equal to 0.
  #
  # EXAMPLE
  #
  # Using the array from the C.Pine challenge
  # each iteration looks like this
  # => false, false, true, true, false, false, true, true, false, false, true, true, true
  #
  pivot = arr.shift
  # .shift removes the first element in the
  # array and returns it, thereby shifting
  # all elements down by one.
  #
  # If the array has only one element it will
  # return only that element.  If the array is
  # empty it will return nil.
  #
  # EXAMPLE
  #
  # Using the array from the C.Pine challenge,
  # each iteration looks like this (taking into
  # the latter steps in the program):
  #
  # => (1) pivot = "can"      => when sorting original string
  # => (2) pivot = "a"        => when sorting first iteration of less
  # => (3) pivot = "feel"     => when sorting first iteration of more
  # => (4) pivot = "can"      => when sorting second iteration of less
  # => (5) pivot = "singing"  => when sorting second iteration of more
  # => (6) pivot = "like"     => when sorting third iteration of less (the final iteration)
  #
  less, more = arr.partition {|e| e < pivot }
  # .partition
  #
  # Returns two arrays.  The first
  # array contains the elements of the array
  # for which the block evaluates to true.
  # The second array contains the remaining
  # elements that don't evaluate to true.

  # In the above, the block (the bit in "{}") is
  # saying "is each element less than pivot?".
  #
  # Those elements which are less than pivot evaluate
  # to true and go into the FIRST subarray, whereas
  # all others go into the SECOND subarray.

  # So for the first set of return values below (1),
  # the letter "a" is LESS than "can" (pivot value (1),
  # i.e. "can") and gets allocated to the FIRST
  # subarray, whereas the other words are GREATER
  # than pivot value (1) so allocate to the SECOND
  # subarray.
  #
  # less, more =
  #
  # Here we are using multiple assignment again (like in
  # my roman numerals solutions), meaning less gets
  # assigned the value of the first subarray, i.e. those
  # strings that were LESS than the pivot, and that more
  # gets assigned the value of the second subarray, i.e.
  # those strings that were GREATER than the pivot.
  #
  # EXAMPLE
  #
  # => less, more = arr.partition {|e| e < pivot }
  # => less, more = [["a"], ["feel", "singing", "like", "can"]]
  # => less = ["a"]
  # => more = ["feel", "singing", "like", "can"]
  #
  sort(less) + [pivot] + sort(more)
  #
  # RECURSION KICKS IN HERE! At the end of each iteration we
  # (1) run sort on less and add that value to return, (2) add
  # the pivot to return and (3) run sort on more (which will
  # will continue splitting and comparing until we sort all
  # of the original elements).
  #
end

puts(sort(['can', 'feel', 'singing', 'like', 'a', 'can']))
# => ["a", "can", "can", "feel", "like", "singing"]

# So, taking all that into account, what we actually
# get in terms of each iteration is as follows:
#
# (1)
# => pivot = ["can"]
# => less = ["a"], more = ["feel", "singing", "like", "can"],
# => results after initial sort of ['can','feel','singing','like','a','can']
#
# (2)
# => pivot = ["a"])
# => less = [], more = [],
# => results after sort(less), where less = ["a"]
#
# (3)
# => pivot = ["feel"]
# => less = ["can"], more = ["singing", "like"],
# => results after sort(more), where more = ["feel", "singing", "like", "can"]
#
# (4)
# => pivot = ["can"]
# => less = [], more = []],
# => result after sort(less), where less = ["can"])
#
# (5)
# => pivot = ["singing"]
# => less = ["like"], more = []],
# => result after sort(more), where more = ["singing", "like"]
#
# (6)
# => pivot = ["like"]
# => less = [], more = []]
# => result after sort(less), where less = ["singing"]
#
# (7) Final result
# => ["a", "can", "can", "feel", "like", "singing"]
#
# FURTHER NOTES
#
# The above is a variation on the quicksort algorithm.  The quicksort
# algorithm is a method for quickly sorting
#
# The idea is that you pick an element (called the pivot in the above), and
# split the array into (1) those elements LESS than the pivot and (2) those
# elements GREATER than the pivot.  You then recursively run the same process
# on each array until the entire original array is sorted.
#
# Here is a straightforward and succinct explanation and diagram visualising
# how this works for each iteration in a quicksort of numbers:
#
# https://www.khanacademy.org/computing/computer-science/algorithms/quick-sort/a/overview-of-quicksort
#
# Here is a video using Hungarian folk dance to show how quicksort works:
#
# https://www.youtube.com/watch?v=ywWBy6J5gz8
#
# ...And here is a more serious video but

# from Harvard's CS50 course explaining the same algorithm:
#
# https://www.youtube.com/watch?v=aQiWF4E8flQ
#
# ---------------------------------------------------
# ANOTHER SOLUTION WITH WRAPPER COURTESY STEVE DAWES
#
# WITH WRAPPER
def sort(arr)
  recursive_sort(arr, [])
# This is called a "wrapper", a method that wraps up another method,
# in this case the recursive_sort method.  The sort method takes
# one argument, the given array, which in turn is passed into the
# recursive sort method along with an empty array as the second
# argument.
end
​#
def recursive_sort(unsorted_array, sorted_array)
# On the first iteration, unsorted_array is the original array whereas
# sorted_array is the empty array.  After each iteration of the below
# unsorted_array decreases by one word and sorted_array increases by
# one word until all the words are in the sorted_array and are sorted
# in order within that array, leaving unsorted_array empty.
  sorted_array << unsorted_array.delete_at(unsorted_array.min)
# unsorted_array.min returns the smallest value from the unsorted_array, e.g.
# 'a'.  That value is then fed into unsorted_array.delete_at. delete_at(index)
# deletes the value at the index corresponding to the value 'a'.  WARNING if
# we were to use delete(obj) we would accidentally delete duplicates in the
# array, e.g. because our original array has a duplicate 'can', the duplicate
# 'can' would get deleted and wouldn't be added to sorted_array, thereby
# defeating the object of the code.
  return sorted_array if unsorted_array.size < 1
# Returns sorted_array once all elements have been sorted, i.e. once
# unsorted_array is less than 1.
  recursive_sort(unsorted_array, sorted_array)
# This is the RECURSION - the latest values of the unsorted_array and the
# sorted_array at the end of each iteration are then re-run through the
# recursive_sort method and so on until everything is sorted.
end
puts(sort(['can', 'feel', 'singing', 'like', 'a', 'can']))
#
# WITHOUT WRAPPER
#
@sorted_array = []
# sorted_array global variable outside of sort method so sort method doesn't
# continually reset the sorted_array to an empty array after each iteration.
def sort(unsorted_array)
  @sorted_array << unsorted_array.delete_at(unsorted_array.min)
  sort(unsorted_array) until unsorted_array.length == 0
# This is the RECURSION - latest value of unsorted_array after each iteration
# is then re-run through the sort method until everything is sorted.
  @sorted_array
end
puts(sort(['can', 'feel', 'singing', 'like', 'a', 'can']))
