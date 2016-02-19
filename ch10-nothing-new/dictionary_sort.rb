def quicksort n
  return n if n.size <= 1
  pivot = n.shift
  less = n.select {|element| element < pivot}
  more = n.select {|element| pivot<=element}
  quicksort(less) + [pivot] + quicksort(more)
end

def dictionary_sort n
  temp_array = n.collect(&:upcase)
  temp_shuffle = quicksort(temp_array)
  n.each do |x|
    temp_shuffle[temp_shuffle.index(x.upcase)] = x
  end
  temp_shuffle
end
