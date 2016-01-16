def shuffle arr
  new_arr = []
  until arr.empty?
    pick = arr[rand(arr.length)]
    new_arr << pick
    arr.delete(pick)
  end
  new_arr
end