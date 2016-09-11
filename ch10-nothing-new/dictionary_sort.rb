def dictionary_sort(arr)
  rec_sort_dic arr, []
end
def rec_sort_dic(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end
  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each do |tested|
    if tested.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = tested
    else
      still_unsorted.push tested
    end
  end
  sorted.push smallest
  rec_sort_dic(still_unsorted, sorted)
end

puts(dictionary_sort(["zebra", "cheetah", "giraffe", "cougar", "leopard", "elephant"]))
