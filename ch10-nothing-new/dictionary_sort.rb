def dictionary_sort arr
  sorted = []

  for counter in (1..arr.length) do
    array_last = arr.length - 1
    smallest = arr[0]
    smallest_pos = 0
    for num in (1..array_last) do 
      if (smallest.downcase > arr[num].downcase)
        smallest = arr[num]
        smallest_pos = num
      end 
    end
    arr.delete_at(smallest_pos)
    sorted << smallest
    end
  return sorted
end
