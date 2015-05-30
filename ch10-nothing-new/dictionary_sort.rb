
def dictionary_sort arr
  rec_dict_sort arr, []
end

def rec_dict_sort unsorted_arr, sorted_arr
  sorted_arr = []

  until unsorted_arr.empty?
    left_unsorted =[]
    smallest_wrd = unsorted_arr.pop

    unsorted_arr.each do |word|
      if word.downcase < smallest_wrd.downcase
        left_unsorted.push(smallest_wrd)
        smallest_wrd = word
      else
        left_unsorted.push(word)
      end

    end
    sorted_arr.push(smallest_wrd)
    unsorted_arr = left_unsorted
  end

  return sorted_arr

end

# test_arr = ['hello', 'lara', 'Tea', 'Bear', 'zen', 'Allo']
# puts (dictionary_sort(test_arr))
