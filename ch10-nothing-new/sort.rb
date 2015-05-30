
def sort arr # this wraps the recursive sort, passes empty array in as 2nd parameter within the method so you don't have to keep remembering to do so
  recursive_sort arr, []
end


def recursive_sort unsorted_arr, sorted_arr
  sorted_arr = []

  until unsorted_arr.empty?
    left_unsorted =[]
    smallest_wrd = unsorted_arr.pop

    unsorted_arr.each do |word|
      if word < smallest_wrd
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

# test_arr = ['hello', 'lara', 'tea', 'bear']
# puts (sort(test_arr))

# got about half way before had to look at solution and adapt my method accordingly
