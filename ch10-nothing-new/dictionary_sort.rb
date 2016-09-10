def dictionary_sort arr
  rec_dic_sort arr, []
end

def rec_dic_sort unsorted, sorted

  if unsorted.length < 1
    return sorted
  end

  still_unsorted = []
  smallest = unsorted.pop  # smallest placeholder item

  unsorted.each do |i|
    if i.downcase < smallest.downcase
      still_unsorted << smallest
      smallest = i
    else
      still_unsorted << i
    end
  end

  sorted << smallest
  rec_dic_sort still_unsorted, sorted

end

