def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unsorted_arr, sorted_arr
  sorted_arr << unsorted_arr.delete_at(rand(0...unsorted_arr.size))

  rec_shuffle unsorted_arr, sorted_arr unless unsorted_arr.size == 0
  sorted_arr
end
