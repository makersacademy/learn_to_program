def dictionary_sort arr
  # your code here
  recursive_dict_sort arr, []
end

def recursive_dict_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each do |tested_element|
    if tested_element.downcase < smallest.downcase
      smallest = tested_element
    else
      still_unsorted.push tested_element
    end
  end

  sorted.push smallest

  recursive_dict_sort still_unsorted sorted
end


