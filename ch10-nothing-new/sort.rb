def sort arr
  return arr if arr.count <= 1 # Array of length 1 or less is always sorted
  # 1. Dividi
  mid = arr.count / 2
  part_a = sort arr.slice(0, mid)
  part_b = sort arr.slice(mid, arr.count - mid)

  # 2. Impera
  arr = []
  offset_a = 0
  offset_b = 0
  while offset_a < part_a.count && offset_b < part_b.count
      a = part_a[offset_a]
      b = part_b[offset_b]
      # Take the smallest of the two, and push it on our array
      if a <= b
          arr << a
          offset_a += 1
      else
          arr << b
          offset_b += 1
      end
  end

  # There is at least one element left in either part_a or part_b (not both)
  while offset_a < part_a.count
      arr << part_a[offset_a]
      offset_a += 1
  end

  while offset_b < part_b.count
      arr << part_b[offset_b]
      offset_b += 1
  end

  return arr

end
