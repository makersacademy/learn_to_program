def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_arr, sorted_arr

  return sorted_arr if unsorted_arr.length == 0

  smallest = unsorted_arr.pop
  rest_arr = []

  unsorted_arr.each do |object|
    if object < smallest
      rest_arr.push smallest
      smallest = object
    else
      rest_arr.push object
    end
  end

  sorted_arr.push smallest

  recursive_sort rest_arr, sorted_arr

end

puts(sort(['you', 'do', 'not', 'exist', 'anymore']))


