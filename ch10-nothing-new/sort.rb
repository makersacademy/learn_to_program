def sort arr
  recursive_sort arr, [] #calls other method and passes in arr as the unsorted_arr
                           #passes in [] as the sorted_arr
end

def recursive_sort unsorted_arr, sorted_arr

  if unsorted_arr.empty?
    return sorted_arr   #stops recursion if all the strings have been transferred to sorted_arr
  else

    sorted_arr << unsorted_arr.sort!.slice!(0)#moves smallest string from unsorted to sorted
    recursive_sort unsorted_arr, sorted_arr   #recursion => repeat recursive_sort method
  end
end
