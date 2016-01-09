def dictionary_sort arr
    rec_sort arr, []
end

  def rec_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted[-1].downcase
  smallest_orig = unsorted.pop

  still_unsorted =[]
  unsorted.each do |x|
    if x.downcase < smallest
      still_unsorted.push smallest_orig
      smallest = x.downcase
      smallest_orig = x
    else
      still_unsorted.push x
    end
  end
  sorted.push smallest_orig

  rec_sort still_unsorted, sorted
  end

 dictionary_sort(["zebra","ele", "Apple", "Ball"])
