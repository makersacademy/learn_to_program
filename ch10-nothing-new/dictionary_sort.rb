def dictionary_sort arr
  return [] if arr == 0
  pivot = arr.shift
  less, more = arr.partition {|e| e.downcase < pivot.downcase}
  sort(less) + [pivot] + sort(more) 
end

puts (dictionary_sort(['can', 'feel', 'singing', 'like', 'a', 'Can']))
# => ["a", "can", "can", "feel", "like", "singing"]

# For dictionary_sort, we have altered the original sort method so that capitalized letters are sorted properly.
# As mentioned by Chris Pine, our previous method would not consider two of the same word to be the same if one
# of them was capitalized because a capital letter has a different ASCII code to its lowercase counterpart.
#
# Therefore, we alter our original method's conditional statement by downcasing both e and the pivot.
# NOTE: We are not altering the original letter and it WILL keep its original case. In other words, we are 
# asking: "Is e.downcase smaller than pivot.downcase? If YES/TRUE, then assign e to the less array. If NO/FALSE,
# then assign e to the more array."