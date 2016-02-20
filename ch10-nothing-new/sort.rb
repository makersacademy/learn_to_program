
def sort(arr)
  # your code here
  rec_sort(arr, []) # This method takes the array from the sort method and an empty array.
end

def rec_sort(unsorted, sorted)
  # The arr given then becomes the unsorted argument (array) and the [] becomes the sorted argument (array).
  if unsorted.length <= 0
    return sorted
  end
  # This says that if the length of the unsorted array is 0 then return the sorted array because the process has finished.

  smallest = unsorted.pop
  # A variable called smallest is being set to the last object in the unsorted array.
  still_unsorted = []
  # An empty array called still_unsorted is created.

  unsorted.each do |test_obj|
    if test_obj < smallest
      still_unsorted.push smallest
      smallest = test_obj
    else
      still_unsorted.push test_obj
    end
  end
  # Iterating through the unsorted array, if the test_obj (current word) is smaller than the variable smallest, push smallest on to the end of the still_unsorted array. That current test_obj becomes the smallest variable.
  # If the test_obj is larger than smallest then push test_obj into the still_unsorted array.
  # Now smallest variable has the smallest word from that unsorted method.

  sorted.push smallest
  # That smallest word is then pushed onto the end of the sorted array.
  rec_sort(still_unsorted, sorted)
  # The rec_sort method is then run until the length of unsorted array becomes 0.
end

puts(sort(['can','feel','singing','like','a','can']))
# >> a
# >> can
# >> can
# >> feel
# >> like
# >> singing

# Easier way of doing it:
array = ['can','feel','singing','like','a','can']
array.sort_by! {|x| x.length}
array # => ["a", "can", "can", "like", "feel", "singing"]
