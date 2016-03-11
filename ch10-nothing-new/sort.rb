# MY FIRST ATTEMPT
# def sort arr
#   sorted = []
#   until arr == []
#     i = -1
#     check_word = arr[i]
#     until arr[i+1] == arr.last do
#       if check_word <= arr[i+1]
#           i += 1
#       else
#           check_word = arr[i+1]
#           i = -1
#       end
#     end
#     arr.delete(check_word)
#     sorted << check_word
#   end
# end

def sort ary
  # This "wraps" recursive_sort.
  sorted_ary = recursive_sort ary, []
end


def recursive_sort unsorted, sorted
  if unsorted == []
    return sorted
  end

  still_unsorted = []
  check_word = unsorted.pop

  unsorted.each do |compare|
    if check_word < compare
      still_unsorted << compare
    else
      still_unsorted << check_word
      check_word = compare
    end
  end
  sorted << check_word

  recursive_sort still_unsorted, sorted
  return sorted
end



#sort ['b', 'c', 'a', 'f', 'd', 'x', 'z' ]
p sort ['Babbo', 'cavolo', 'Alla', 'fine', 'Fdff', 'x', 'z' ]
# p shuffle ['Babbo', 'cavolo', 'Alla', 'fine', 'Fdff', 'x', 'z' ]
