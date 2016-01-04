
  def dictionary_sort arr
    recursive_sort(arr, [])
  end

  def recursive_sort(unsorted_array, sorted_array)

      if unsorted_array.count <= 0
        return sorted_array
      end

      smallest = unsorted_array.pop
      p 'first the smallest is ' + smallest
      unsorted = []

      unsorted_array.each do |w|
        if w.downcase < smallest.downcase
          unsorted.push(smallest)
          smallest = w
          p 'now the smallest is ' + smallest
        else
          unsorted.push(w)
        end
      end

      sorted_array.push smallest
      recursive_sort(unsorted, sorted_array)

  end

  p dictionary_sort(['egg','balloon','fish','apple', 'Apple', 'Monkey'])
