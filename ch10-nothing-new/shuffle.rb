def shuffle arr
  return arr if arr.length <= 1
  random = rand(arr.length)
  randomed = arr.select.with_index{|x,y| x if y == random}
  arr.delete_at(random)
  remaining = arr

  shuffle(remaining) + randomed

end
