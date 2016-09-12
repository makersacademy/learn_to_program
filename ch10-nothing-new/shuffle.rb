def shuffle arr
  shuf = []
  while arr.length > 0
    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []
    arr.each do |item|
      if curr_index == rand_index
        shuf.push item
      else
        new_arr.push item
      end
      curr_index = curr_index + 1
end
arr = new_arr
end
shuf
end
puts(shuffle([1, 2, 2, 323, 53, 54, 65, 7, 47, 54, 2, 8765, 44, 23, 48, 6, 2, 32, 6]))
