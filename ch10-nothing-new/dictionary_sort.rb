def dictionary_sort(array)
   return array if array.length == 0

   random = array.pop
   # Without the less than OR EQUAL to, repeat values get discarded
   low = array.select {|x| x.downcase <= random.downcase}
   high = array.select {|x| x.downcase > random.downcase}

   dictionary_sort(low) + [random] + dictionary_sort(high)
end

p dictionary_sort(['cat', 'dog', 'hippo', 'elephant', 'monkey', 'Hippo'])
