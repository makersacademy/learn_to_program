def shuffle arr
  arr.sort_by{rand} # => [2, 3, 1, 4, 5]
end



# arr.sample(arr.length)
# arr.sort_by{rand}