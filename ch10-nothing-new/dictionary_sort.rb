def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end

  shortest = unsorted_array.pop
  still_unsorted = []

  unsorted_array.each do |word|
    if word.downcase < shortest.downcase
      still_unsorted.push shortest
      shortest = word
    else
      still_unsorted.push word
    end
  end
  sorted_array.push shortest

  recursive_sort still_unsorted, sorted_array
end

puts (dictionary_sort(['hello', 'ant', 'raining', 'grass', 'A', 'dog']))
