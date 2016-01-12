def dictionary_sort arr
  sorted = []
    while arr.length >= 1
      to_sort = []
      smallest = arr.pop
      arr.each do |word|
        if smallest.downcase < word.downcase
          to_sort << word
        else
          to_sort << smallest
          smallest = word
        end
      end
      sorted << smallest
      arr = to_sort
    end
  p sorted
 end

 # test = ['can', 'Goat', 'hand', 'zebra', 'Potato', 'Apple', 'anchor']
 #
 # dictionary_sort(test)
