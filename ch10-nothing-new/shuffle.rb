def shuffle arr
  recursive_shuffle arr, []
  
end

def recursive_shuffle unsort_arr, sort_arr
 x = rand(unsort_arr.size)
 sort_arr << unsort_arr[x]
 unsort_arr.delete_at(x)
 return sort_arr if unsort_arr.size < 1
 recursive_shuffle(unsort_arr,sort_arr)
end