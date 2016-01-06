def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  return sorted if unsorted.length <= 0

  sorting = unsorted.pop
  not_sorted = []

  unsorted.each { |x|
    #as long as it checks lowercase versions of the words, it will sort the words in order, regardless of capital letters.
    if x.downcase < sorting.downcase
      not_sorted << sorting
      sorting = x
    else
      not_sorted << x
    end }
  sorted << sorting
  recursive_sort not_sorted, sorted
end
