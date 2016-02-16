def sort arr
  return arr if arr.length <= 1
  mid = arr.pop
  before = arr.select {|word| word < mid}
  after = arr.select {|word| word >= mid}
  sort(before) + [mid] + sort(after)
end
