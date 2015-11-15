def dictionary_sort(arr)
  # your code here
  return arr if arr.length <= 1
    new_arr = ""

    compare_word = arr.pop
    less_word = arr.select {|w| w.downcase < compare_word.downcase}
    more_word = arr.select {|w| w.downcase >= compare_word.downcase}


    dictionary_sort(less_word) + [compare_word] + dictionary_sort(more_word)


end


words = ['tony', 'Chris', 'Adam', 'sally', 'john', 'zebedee', 'asheley']
word = []
p dictionary_sort(words)
p dictionary_sort(word)
