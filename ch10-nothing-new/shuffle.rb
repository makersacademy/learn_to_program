#completed as pair programming with Kevin

def shuffle arr
 shuffled_arr = []
 arr.size.times  do
 index = rand(arr.length)
 shuffled_arr << arr[index]
 arr.delete_at(index)
 end
return shuffled_arr
end
shuffle([1,2,3,4,5,6,7,8,9])

# take in an array
# find a random element
# identify value of index
# add that index to a new array
# delete that index
# do this for each element 
#

