def dictionary_sort arr
  # your code here
  sorted = []
  sorted << (arr.min(arr.length) { |a, b| a.downcase <=> b.downcase })
  sorted
end

#ar = ['hello', 'Ruby', 'Alphabet', 'jimmy', 'William']
#puts dictionary_sort ar
# >> Alphabet
# >> hello
# >> jimmy
# >> Ruby
# >> William