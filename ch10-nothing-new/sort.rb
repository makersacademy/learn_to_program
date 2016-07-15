def firstword (some_array)
  arraylen = some_array.length
  count = 0
  first =some_array[0]
  while count <  arraylen -1
    nxtword = some_array[count +1]
    if first < nxtword
      first = first
    elsif first > nxtword
      first = nxtword
    end 
    count = count + 1
  end
  return first
end
def recursive_sort unsorted_array,  sorted_array
  # sorted_array is passed and empty arrray but has items pushed into it 
  if unsorted_array  == [] 
    return sorted_array
  else
    # find first item for sorted array
    #append  this item to sorted array
    #remove this item from unsorted_array
    #make a recursive call to recursive_sort unsorted_array - sorted item (lines below)
    item = firstword unsorted_array
    sorted_array.push item
    indx =unsorted_array.index(item)
    unsorted_array.delete_at(indx) #usig this keeps duplicates which is what real method sort does
    recursive_sort unsorted_array, sorted_array
    
  end
end

def sort arr
  # your code here
  recursive_sort arr, []
end
# test data temp = ['a','z','cat','wife','stife']
# test call x = sort temp
# test output puts x