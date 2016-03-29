def dictionary_sort arr
  sorted = []
  unsorted = arr[0...arr.length]
  while unsorted.length > 0
    smallest = unsorted[0]
    0.upto(unsorted.length - 1) do |index|
      smallest = smallest.downcase < unsorted[index].downcase ? smallest : unsorted[index]
    end
    sorted << unsorted.delete_at(unsorted.index(smallest))
  end
  sorted
end