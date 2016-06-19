def shuffle (arr)
  # your code here
  shuffled_array []
  
  #---random objects from array---
  #class Array
  #def random_element
  # self[rand(length)]
  #end
  #end
  #
  #or
  #
  #rand - random generator  
  while arr.length > 0
  rand_arr_object = rand(arr.length)
  
  selected = 0
  new_array = []
  
  arr.each {|x|
  
  if selected == rand_arr_object
      return shuf.push(item)
  else
      return new_array.push(item)
  end
  selected = selected + 1
      
  }
  
  arr= new_array
end
shuffle
end