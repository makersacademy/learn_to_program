def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  return sorted if (unsorted.length <= 0)

  test_word = unsorted.pop
  still_unsorted = []

  unsorted.each do |word|
    if word.downcase < test_word.downcase
      still_unsorted.push test_word
      test_word = word
    else
      still_unsorted.push word
    end
  end

  sorted.push test_word
  recursive_sort still_unsorted, sorted
end


puts (dictionary_sort(['heat', 'beef', 'cat', 'Food', 'after', 'Dodge', 'greens', 'erryday']))
