def sort(original_array)
recursive_sort(original_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
 if unsorted_array.length <= 0
    return sorted_array 
  end
last_word = unsorted_array.pop
still_unsorted_array = []

unsorted_array.each do |word|
    if word.downcase < last_word.downcase
        still_unsorted_array.push(last_word)
        last_word = word
    else
        still_unsorted_array.push(word)
    end
end

sorted_array.push(last_word)

recursive_sort(still_unsorted_array, sorted_array)
end

puts sort(["these", "are", "some", "words", "to", "sort"])