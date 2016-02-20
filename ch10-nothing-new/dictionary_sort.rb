
def dictionary_sort some_array
  recursive_sort some_array, []

end

def recursive_sort unsorted_array, sorted_array
# task to get the smallest number from an array
if unsorted_array.length == 0
  return sorted_array
end
  still_unsorted = []
    smallest = unsorted_array.pop  #assume first element in array is smallest
    unsorted_array.each do |element|
      if element.downcase < smallest.downcase #iterate through array and compare each element with current smallest
        still_unsorted.push(smallest) #current smallest is disregarded into another array
        smallest = element
      else
        still_unsorted << element
     end
   end
sorted_array << smallest


recursive_sort still_unsorted, sorted_array


end




