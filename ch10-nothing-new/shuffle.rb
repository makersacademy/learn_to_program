def shuffle arr
  rec_shuffle arr, []
  #answer = rec_shuffle arr, []
  #puts answer
  #puts answer.join(' ')
end

def rec_shuffle sorted_arr, shuffle_arr
  if sorted_arr.length > 0
    val = rand(1..sorted_arr.length) - 1
    #puts val
    shuffle_arr << sorted_arr[val]
    #puts shuffle_arr
    sorted_arr.delete_at(val)
    rec_shuffle sorted_arr, shuffle_arr
  else
    #puts shuffle_arr
    return shuffle_arr
  end
end
shuffle ["this", "is", "simply","a","test"]
shuffle [1,2,3,4,5]