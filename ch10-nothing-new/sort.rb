# LEARNING TO PROGRAM WITH CHRIS PINE, ch10
###########################################
# A method to SORT an array applying merge sort as 
# found on https://en.wikipedia.org/wiki/Merge_sort

def sort(arr)
  return arr if arr.length < 1

  pivot = arr.pop
  less = arr.select { |item| item < pivot}
  more = arr.select { |item| item >= pivot}

  sort(less) + [pivot] + sort(more)
end

