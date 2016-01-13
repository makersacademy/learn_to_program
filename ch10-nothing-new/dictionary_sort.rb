def dictionary_sort arr
  rec_dic_sort arr, []
  #answer = rec_dic_sort arr, []
  #puts answer.join(' ')
end

def rec_dic_sort unsorted_arr, sorted_arr
  smallest = unsorted_arr[0]
  if unsorted_arr.length > 0
    unsorted_arr.each do |word|
      smallest = word if word.downcase < smallest.downcase
    end
    sorted_arr << smallest
    unsorted_arr.delete_at(unsorted_arr.index(smallest))
    rec_dic_sort(unsorted_arr,sorted_arr)
  else
    return sorted_arr
  end

end

dictionary_sort ["Eirik", "erik", "john", "Ada"]