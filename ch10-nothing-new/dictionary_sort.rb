def dictionary_sort arr

return 'The array shouldn\'t be empty for things to be fun' if arr == []

recursive_sort arr,[]

end

def recursive_sort unsorted_array, sorted_array

  if unsorted_array.length == 1 || unsorted_array.all? {|word| word.downcase == unsorted_array[0].downcase}

    sorted_array << unsorted_array[0]
    return sorted_array
  else
    small = unsorted_array[0]
    i = 0
    while i < unsorted_array.length
      if small.downcase > unsorted_array[i].downcase
      small = unsorted_array[i]
      i += 1
      else
      i += 1
      end
    end
  end
  sorted_array << small
  unsorted_array.delete(small)

  recursive_sort unsorted_array, sorted_array
end
