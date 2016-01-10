#Sort Method

# 1. define the sort method to take an array.
# 2. Make two lists, one with unsorted words and one wit sorted words
# 3. return the sorted list when the unsorted list is empty
# 4. get the list of words to the unsorted list.
# 5. look at all the words in the unsorted list and get the smallest.
#   a) iterate through the unsorted list, checking if each word is less than another.
#   b) identify the ‘another word’, (.pop it off the end)
#   c) if the iterated word is smaller than the ‘another word’, the iterated word becomes the ‘another word.
#      i. another word = iterated word
#   d) push the old another word to a new unsorted list
#   e) when there are no iterated words smaller than the another word, push the another word to the sorted list
# 6. push the smallest (another word) to the sorted list



def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  return sorted if (unsorted.length <= 0)

  test_word = unsorted.pop
  still_unsorted = []

  unsorted.each do |word|
    if word < test_word
      still_unsorted.push test_word
      test_word = word
    else
      still_unsorted.push word
    end
  end

  sorted.push test_word
  recursive_sort still_unsorted, sorted
end


puts (sort(['heat', 'beef', 'cat', 'Food', 'after', 'Dodge', 'greens', 'erryday']))
