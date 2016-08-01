def shuffle arr
  x = arr.length
  new_arr = []
  while x != 0
    randpos = rand(x)
    x = x-1
    item = arr[randpos]
    new_arr.push item
    arr[randpos] = arr[x]
    arr.pop
  end

  new_arr
  # your code here
end

puts(shuffle([1,2,3,4,5,6,7,8,9]))
