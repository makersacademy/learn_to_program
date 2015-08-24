def dictionary_sort arr
  recursive_dict_sort arr, []
end

def recursive_dict_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object| # ---> look at each object of unsorted
    if tested_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
  end

  sorted.push smallest # --> add smallest word to the end of sorted array

  recursive_dict_sort still_unsorted, sorted
end

puts dictionary_sort ['can', 'feel', 'singing', 'like', 'A', 'Can']
