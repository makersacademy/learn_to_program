def shuffle(arr)
  arr.sort_by{rand}
end

shuffle([1, 2, 3, 4, 5, 6])
