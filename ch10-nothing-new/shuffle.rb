def shuffle arr
  # your code here
  shuffled_array = []
  
 
  while arr.length > 0
  rand_arr_object = rand(arr.length)
  
  selected = 0
  new_array = []
  
  arr.each {|x|
  
  if selected == rand_arr_object
      shuffled_array.push x
  else
      new_array.push x
  end
  selected +=1
      
  }
  
  arr= new_array
end
shuffled_array
end

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