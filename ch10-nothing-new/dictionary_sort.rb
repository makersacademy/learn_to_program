def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
   (sorted = unsorted.pop) ? dictionary_sort(unsorted.select{|i| i <= sorted}) + [sorted] + dictionary_sort(unsorted.select{|i| i > sorted}) : []
end

