def sort arr
  return [] if arr == 0
  pivot = arr.shift
  less, more = arr.partition {|e| e < pivot}
  sort(less) + [pivot] + sort(more) 
end

puts (sort(['can', 'feel', 'singing', 'like', 'a', 'can']))
# => ["a", "can", "can", "feel", "like", "singing"]


# In this method we sort the words recursively. First we take a word from the array, in this case - the first one
# by using .shift, which removes the first element and shift all the elements down one. We assign that word to the
# name 'pivot'. We then split the array into two groups based on whether they are smaller or larger than the pivot.
# On the last line of the array the pivot is put in its rightful place between the less and more groups.
# Now recursion kicks in and starts two more separate sort methods for the individual less and more groups. It 
# continues this process of (sort --> split --> sort) until the whole original array is properly sorted.