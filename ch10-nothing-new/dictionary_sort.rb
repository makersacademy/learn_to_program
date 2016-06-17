def dictionary_sort arr
  return arr if arr.length <=1

  middle = arr.pop
  low = arr.select {|x| x.downcase <= middle.downcase}
  high = arr.select {|x| x.downcase > middle.downcase}

  dictionary_sort(low) + [middle] + dictionary_sort(high)

end

puts dictionary_sort(['Banana', 'apple', 'orange', 'Grape'])
