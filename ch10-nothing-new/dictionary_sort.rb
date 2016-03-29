=begin
Dictionary sort. Your sorting algorithm is pretty good, sure. But there was
always that sort of embarrassing point you were hoping I’d just sort of
gloss over, right? About the capital letters? Your sorting algorithm is good
for general-purpose sorting, but when you sort strings, you are using the
ordering of the characters in your fonts (called the ASCII codes) rather
than true dictionary ordering. In a dictionary, case (upper or lower) is
irrelevant to the ordering. So, make a new method to sort words (something
like dictionary_sort ). Remember, though, that if I give your program words
starting with capital letters, it should return words with those same cap-
ital letters, just ordered as you’d find in a dictionary.

=end

def dictionary_sort(arr)
  # your code here
  rec_sort arr, true
end

def rec_sort(arr, case_down = false)
  # your code here
  still_unsorted = []
  already_sorted = []
  smallest = arr.first
  sorted_idx = 0
# take list of words, and find "smallest" word comparing with "<", make note of index
  arr.each_index do |i|
    if case_down
      condition = arr[i].downcase < smallest.downcase
    else
      condition = arr[i] < smallest
    end
    if condition
      smallest = arr[i]
      sorted_idx = i
    end
  end

  already_sorted << smallest
  arr.slice!(sorted_idx)
  still_unsorted = arr
  while still_unsorted.size > 0
    already_sorted << rec_sort(still_unsorted,true)
  end
  already_sorted.flatten
end

words = ['can','feel','singing.','like','A','can']
puts dictionary_sort(words).join(' ') == 'A can can feel like singing.'


