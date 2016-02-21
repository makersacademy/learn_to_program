# page 75 (87 / 184)

def sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  head = arr.select {|item| item < middle}
  tail = arr.select {|item| item >= middle}

  sort(head) + [middle] + sort(tail)
end


# sort ['can1','feel','singing','like','a','can2']