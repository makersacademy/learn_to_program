def sort arr
  #so the aim of this seems to be to make a sorting algorithm (without just .sort)
  # and i guess to use some recursion
  # dont need to sort an array with 1 element
  if arr.length <= 1
    return arr
  else
    #since its bigger than one, time to get sorting
    #step 1 pick a pivot
    piv = arr.sample
    #.sample == Choose a random element or n random elements from the array.
    # ruby docs OP
    arr.delete_at(arr.index(piv)) #delete pivot from array
    less = []
    greater = []
    #loop through arr
    #assign each value of arr to less or greater arrays
    #depending on relation to the pivot
    arr.each do |x|
      if x <= piv
        less << x
      else
        greater << x
      end
    end
    #recursion!
    sorted_array = []
    sorted_array << self.sort(less)
    sorted_array << pivot
    sorted_array << self.sort(greater)

    sorted_array.flatten!

end
