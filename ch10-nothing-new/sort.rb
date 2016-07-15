def sort(array)
   # The following, I believe, is called quicksort

   # Remember your base case
   return array if array.length == 0

   random = array.pop
   # Without the less than OR EQUAL to, repeat values get discarded
   low = array.select {|x| x <= random}
   high = array.select {|x| x > random}

   sort(low) + [random] + sort(high)

end


p sort([4,3,8,234,8,234,33])
