def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_arr, sorted_arr
  to_sort = []
  min = unsorted_arr.pop
  unsorted_arr.each do |testing|
    if testing < min
      to_sort << min
      min = testing
    else
      to_sort << testing
    end
  end
  sorted_arr << min
  recursive_sort(to_sort, sorted_arr) unless to_sort.size == 0
  sorted_arr
end
