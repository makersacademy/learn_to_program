def shuffle arr
  x = arr.length
  shuffled_array = []
  while x != 0
    shufflepos = rand(x)
    item = arr[shufflepos] #selects item in array based on shufflepos
    shuffled_array.push item #pushes to new array
    x = x - 1 #arr needs to be reduced by one item
    arr[shufflepos] = arr[x] #giving new array item position at end of array allowing it to be popped off
    arr.pop #reduces arr by the item that has just been pushed to shuffled array
  end
shuffled_array
end

puts (shuffle([1,2,3,4,5,6,7]))