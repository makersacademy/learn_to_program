def dictionary_sort arr
  recursive_sort(arr, [])

end

def recursive_sort unsorted_array, sorted_array

  a = 0
  b = 0

  while b < unsorted_array.length
    if unsorted_array[a].downcase < unsorted_array[b].downcase
      b = b + 1
    elsif a = b
      b = b + 1
    else
      a = a + 1
      b = 0
    end
  end

  sorted_array.push unsorted_array[a]
  unsorted_array.delete_at(a)

  if unsorted_array.length > 0

    recursive_sort(unsorted_array, sorted_array)
  end

  sorted_array

end


# N.B. The above method will permanelty alter the caller!!!
