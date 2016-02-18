require 'set' #required to pass rspec

def shuffle arr
 new_arr = []
 until arr.length == 0
 rand_number = rand(arr.length)
 new_arr << arr[rand_number]
 arr.delete_at(rand_number)
 end
 return new_arr
end

#def shuffle arr
  #  arr.length > 1 ? [arr.slice!(rand(0..arr.length-1)) ] + shuffle(arr) : arr
#end