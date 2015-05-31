def sort arr
  recurse_sort arr []
end

def recurse_sort unsorted sorted
  #From the array, find the smallest word (first in dictionary)
  current = 0
  lowest = unsorted[current]
  while current < unsorted.length
    if lowest > unsorted[current+1]
  	lowest = unsorted[current]
  	sorted << lowest
    recurse_sort unsorted sorted
    end
   end
return sorted
end

array = ['here', 'are', 'some', 'stupid', 'words', 'i', 'wrote']

sort array