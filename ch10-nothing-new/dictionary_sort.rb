def dictionary_sort arr
  return arr if arr.length <= 1
  mid = arr.pop
  before = arr.select{|x| x.downcase < mid.downcase}
  after = arr.select{|x| x.downcase >= mid.downcase}
  dictionary_sort(before) + [mid] + dictionary_sort(after)
end

words = ['I','feel','dancing.','dont', 'anymore']
puts(dictionary_sort(words).join(' '))
