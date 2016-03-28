require 'set'

def shuffle arr
  new_arr = []
  new_arr << arr.last
  new_arr << arr[0..-2]
  new_arr.flatten
end
