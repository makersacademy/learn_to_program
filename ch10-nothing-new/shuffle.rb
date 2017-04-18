def shuffle arr
  
  shuffled_array = []
  while !arr.empty?
  	random_num = rand(arr.length)
  	shuffled_array << arr[random_num]
  	arr.delete_at(random_num)
  end

  shuffled_array

end

# p shuffle([1,2,3,4,5,6,7,8,9])