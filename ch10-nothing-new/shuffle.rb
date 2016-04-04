# def shuffle arr
#  arr.sort_by{rand}
# end

# of course, the above solution comes from Chris Pine

# my method one
# this should work, but for some reason arr_random is not becoming a 2-d array
arr = ['a', 'b', 'c', 'd']
arr_random = []

arr.each do | val |
  arr_random << [val, rand]
end

puts arr_random
puts
arr_random.sort_by{ |x,y| y }
puts
puts arr_random

# my method:
# split the array into constituent parts
# assign each a random number
# reconstitute the array with index numbers based on new random numbers
# also, I am using the in-built sort method following my vexations building
# my own - of course, I'll sub in my own as soon as I'm done :-P
