def sort arr
  return arr if arr.length <= 1
  mid = arr.pop
  before = arr.select{|x| x < mid}
  after = arr.select{|x| x >= mid}
  sort(before) + [mid] + sort(after)
end

puts(sort(['can','feel','self','here','there','where']).join(' '))
