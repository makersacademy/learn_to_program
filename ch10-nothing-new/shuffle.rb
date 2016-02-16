def shuffle(arr)
  # your code here
  arr.sort_by { rand }
end

# shuffle(["a","b","c","d","e"]) # => ["d", "c", "b", "e", "a"]