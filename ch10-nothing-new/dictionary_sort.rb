def dictionary_sort(arr)
  recursive_dictionary_sort(arr,[])
end

def recursive_dictionary_sort(unsorted,sorted)
  return sorted if unsorted.empty?
  to_test = unsorted.pop
  smallest = true
  unsorted.each {|x| smallest = false if to_test.downcase > x.downcase}
  if smallest
    sorted << to_test
  else
    unsorted.unshift(to_test)
  end
  recursive_dictionary_sort(unsorted,sorted)
end
