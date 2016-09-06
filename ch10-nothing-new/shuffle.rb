def shuffle arr
  permutations = arr.permutation.to_a
  permutations[rand(permutations.length)]
end
