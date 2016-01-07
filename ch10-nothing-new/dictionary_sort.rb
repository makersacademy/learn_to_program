def dictionary_sort arr
  recursive_sort arr, []
end


def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array.length <=0

  small = unsorted_array.pop
  remainder_array = []
  unsorted_array.each do |word|
    if word.downcase < small.downcase
      remainder_array << small
      small = word
    else
      remainder_array << word
    end
  end

  sorted_array << small

  recursive_sort remainder_array, sorted_array

end

#puts dictionary_sort %w(hello Why what Who yes always NEver) 
