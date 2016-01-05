def dictionary_sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
  to_sort = []
  min = unsorted.pop
  unsorted.each do |testing|
    if testing.downcase < min.downcase
      to_sort << min
      min = testing
    else
      to_sort << testing
    end
  end
  sorted << min
  rec_sort(to_sort, sorted) unless to_sort.size == 0
  sorted
end
