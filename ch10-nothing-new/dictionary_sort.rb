def dictionary_sort arr
  rec_dict_sort arr,[]
end

def rec_dict_sort unsorted_array, sorted_array
  if unsorted_array.length <=0
    return sorted_array
  end

  smallest = unsorted_array.pop
  still_unsorted = []

  unsorted_array.each do |word|
    if word.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = word
    else
      still_unsorted.push word
    end
  end

  sorted_array.push smallest
  rec_dict_sort still_unsorted, sorted_array
end

puts(dictionary_sort(['can','feel','like','singing','A','can']))
