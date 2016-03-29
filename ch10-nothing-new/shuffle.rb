def shuffle arr, shuffled=[]
  unless arr.empty?
  	index = rand(arr.length)
  	shuffled.push(arr[index])
  	arr.delete_at(index)
  	shuffle(arr,shuffled)
  end
  shuffled
end