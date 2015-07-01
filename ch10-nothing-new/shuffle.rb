def shuffle arr
  newArr=[]
  counter=arr.length-1
  while counter>0
    itemIndex=rand(counter+1)
    newArr.push(arr[itemIndex])
    arr.delete_at(itemIndex)
    counter-=1
  end
  newArr.push(arr.pop)
  return newArr
end


# testArray = [1, 2, 3, 4, 5]
# puts "The original array: #{testArray}"
# shuffled = shuffle testArray
# puts "The shuffled array: #{shuffled}"