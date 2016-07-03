def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle old_arr, shuffled_arr
  return shuffled_arr if old_arr.length < 1

  num = (rand * old_arr.length).to_i
  shuffled_arr.push old_arr.delete_at num
  return recursive_shuffle old_arr, shuffled_arr
end