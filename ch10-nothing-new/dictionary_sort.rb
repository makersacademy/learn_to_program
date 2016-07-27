def dictionary_sort arr
  recursive_dictionary_sort arr, []
end

def recursive_dictionary_sort unsorted_arr, sorted_arr
  if unsorted_arr.length <= 0
    return sorted_arr
  end

small = unsorted_arr.pop
still_unsorted = []

unsorted_arr.each do |n|

    if n.downcase < small.downcase
    still_unsorted.push small
    small = n
  else still_unsorted.push n
  end
end

  sorted_arr.push small

  recursive_dictionary_sort still_unsorted, sorted_arr
end

puts (dictionary_sort(['Goodbye' , 'hello' , 'plane' , 'Car' , 'bike' , 'zebra' ,'X' , 'All' , 'a']))
