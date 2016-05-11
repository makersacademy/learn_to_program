def shuffle(arr)
  arr.shuffle(random: Random.new(1))      # => [9, 3, 7, 8, 2, 1, 5, 4, 6], [6, 7, 5, 4, 3, 9, 2, 8, 1]
  # Shuffles the array using a Random
  # number generator.
end                                       # => :shuffle

shuffle p(shuffle([1,2,3,4,5,6,7,8,9]))   # => [6, 7, 5, 4, 3, 9, 2, 8, 1]

# >> [9, 3, 7, 8, 2, 1, 5, 4, 6]
