def sort arr
  recursive_sort arr, []
  #answer = recursive_sort arr, []
  #puts answer.join(' ')
end

def recursive_sort unsorted_arr, sorted_arr
  #break if unsorted_arr.length == 0
  smallest = unsorted_arr[0]
  if unsorted_arr.length > 0
    unsorted_arr.each do |word|
      smallest = word if word < smallest
    end
    sorted_arr << smallest
    unsorted_arr.delete_at(unsorted_arr.index(smallest))
    recursive_sort(unsorted_arr,sorted_arr)
  else
    return sorted_arr
  end
#find smallest word and add to sorted list
  #move the rest of your words to unsorted list
  #repeat
end
=begin
sort ["Eirik","Abel", "Delta", "Xerox", "Eirik"]
sort []
sort ["with one"]
=end