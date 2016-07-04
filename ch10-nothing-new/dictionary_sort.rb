#!/usr/bin/env ruby
def dictionary_sort arr
  new_arr = []
  arr.each.with_index {|element, index| new_arr[index] = element}
  recursive_sort new_arr, []
end


def recursive_sort unsorted_array, sorted_array

  if unsorted_array.length == 0
    return sorted_array
  else

    still_unsorted = []
    smallest = unsorted_array.pop

    unsorted_array.each do |element|
      if element.upcase < smallest.upcase
        still_unsorted << smallest
        smallest = element
      else
        still_unsorted << element
      end
    end

    sorted_array << smallest
    recursive_sort(still_unsorted, sorted_array)

  end
  end
