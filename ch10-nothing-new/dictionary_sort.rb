def dictionary_sort arr
  return arr if arr.length <= 1
  mid = arr.pop
  before = arr.select {|word| word.downcase < mid.downcase}
  after = arr.select {|word| word.downcase >= mid.downcase}
  dictionary_sort(before) + [mid] + dictionary_sort(after)
end
