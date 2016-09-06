  def dictionary_sort arr
    #base case, other recursion will never stop
    return arr if arr.length <=1
  #Pick an element, called a pivot, from the array.
  #N.B. Using .sample, we choose a random pivot, as opposed to a far left or far right value, which has been shown to give poor efficiency, particularly with close to sorted arrays
    pivot = arr.sample
    arr.delete_at(arr.index(pivot)) #remove the pivot

#Partitioning: reorder the array so that all elements with values less than the pivot come before the pivot, while all elements with values greater than the pivot come after it (equal values can go either way). After this partitioning, the pivot is in its final position. This is called the partition operation.

    less = arr.select {|x| x <  pivot}
    more = arr.select {|x| x >= pivot}

#Recursively apply the above steps to the sub-array of elements with smaller values and separately to the sub-array of elements with greater values.
    dictionary_sort(less) + [pivot] + dictionary_sort(more)
  end
