def shuffle arr
  shuffled_arr = []
  while arr.length > 0
  shuffle_entry = rand(arr.length)
  entry_to_push = arr[shuffle_entry]
  shuffled_arr.push(entry_to_push)
  arr.delete_at(shuffle_entry)
end
arr = shuffled_arr
puts arr
arr
end
