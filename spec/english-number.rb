a =  {1=> "one", 2 => [2,"two"], 3 => "three"}
puts a.flatten    # => [1, "one", 2, [2, "two"], 3, "three"]
puts a.flatten(0) # => [1, "one", 2, 2, "two", 3, "three"]