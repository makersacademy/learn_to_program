
def dictionary_sort arr
  recursive_sort(arr,[])
end

def recursive_sort(unsorted_array, sorted_array, length=1)
  unless unsorted_array.size == sorted_array.size
    unsorted_array.each{|x| sorted_array << x if x.length == length}
    recursive_sort(unsorted_array,sorted_array, length+1)
  end
  #end
  sorted_array
end



puts dictionary_sort(["hello","can","Be","I", "be"])
