def dictionary_sort arr
  recursive_sort(arr, [], arr)
end

def recursive_sort(arr, sorted, original_array)
  if arr.length == 0
    sorted_with_caps = []
    sorted.each do |sorted_word|
      result = sorted_word
      original_array.each do |original_word|
        result = original_word if original_word == sorted_word.capitalize
      end
      sorted_with_caps << result
    end
    return sorted_with_caps
  end

  downcase_array = []
  arr.each { |word| downcase_array << word.downcase}
  smallest = downcase_array.pop
  unsorted = []
  downcase_array.each do | word |
    if word < smallest
      unsorted << smallest
      smallest = word
    else
      unsorted << word
    end
  end
  sorted << smallest
  recursive_sort(unsorted, sorted, original_array)
end