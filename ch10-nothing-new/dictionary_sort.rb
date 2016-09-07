def dictionary_sort arr
  recursive_dictionary_sort arr, []
end

def recursive_dictionary_sort unsorted, sorted

  return sorted if unsorted.length <= 0

  still_unsorted = Array.new
  smallest = unsorted.pop

  unsorted.each do |tested_object|
    if tested_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
  end

  sorted.push smallest

  recursive_dictionary_sort still_unsorted, sorted
end
