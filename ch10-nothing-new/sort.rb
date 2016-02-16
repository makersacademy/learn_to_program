def sort arr
  recursive_sort(arr,[])
end

def recursive_sort(unsorted_array, sorted_array)
  length = 1
  while unsorted_array.size != sorted_array.size
    unsorted_array.each{|x| sorted_array << x if x.length == length}
    length += 1
  end
  sorted_array
end

#puts sort ["a", "can", "singing", "like", "feel", "can"]
