def dictionary_sort arr
  rec_dict_sort arr, []
end
def rec_dict_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |word|
    if word.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = word
    else
      still_unsorted.push word
    end
  end

    sorted.push smallest

    rec_dict_sort still_unsorted, sorted

  end

  puts (dictionary_sort([ 'Dog' , 'cat' , 'Horse' , 'Owl' , 'wolf' ]))
