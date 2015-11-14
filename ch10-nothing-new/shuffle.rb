

def shuffle arr
  arr.shuffle
end

shuffle([4,3,5,6,7,3]) # => [7, 3, 6, 5, 4, 3]


#### OTHER POSSIBILITIES ########

# arr.sample(arr.length)
# arr.sort_by{rand}
# arr.shuffle
