def sort arr
  recursive_sort arr, []
end

def getsAry
  ary = []
  while true
    reply = gets.chomp
    if reply == ""
      return ary
      break
    end
    ary.push reply
  end
end

def recursive_sort unsorted_array, sorted_array
  new_unsorted = []
  if unsorted_array.length == 0
    return sorted_array
  else
    smallest = unsorted_array[0]
    (1..(unsorted_array.length-1)).each do |index|
      if smallest > unsorted_array[index]
        new_unsorted.push(smallest)
        smallest = unsorted_array[index]
      else
        new_unsorted.push(unsorted_array[index])
      end
    end
    sorted_array.push(smallest)
    recursive_sort new_unsorted, sorted_array
  end
end

#puts "Input array one item at a time, enter twice to end"
#ary = getsAry
#puts sort ary

