
def sort arr
  sorted_words = []

  while arr != [] do
    test = arr.pop
    smallest = true

    arr.each do |compare|
      if test > compare
        smallest = false
      end
    end

    if smallest == true
      sorted_words.push(test)
    else
      arr.unshift(test)
    end

  end

  sorted_words
end

