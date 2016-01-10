def dictionary_sort(arr)
  sorted = []
  #if arr.empty? != true
  #  sorted = sorted.push(arr.min)
  #  arr.delete_at(arr.index(arr.min))
  #  dictionary_sort(arr)
  #else
  #  return sorted
  #end
#method above does not work becasue the loop reset the arry to new. It does work if you put the
#method in a class with the array outside the def as an instance variable. However that would not
#pass the rspec test unless edited with the class added to the call.

    while arr.empty? != true
        sorted.push(arr.min)
        arr.delete_at(arr.index(arr.min))
    end
  return sorted
end
