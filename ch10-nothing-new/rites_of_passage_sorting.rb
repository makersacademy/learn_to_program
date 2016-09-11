def shuffle arr
  # your code here

  def sort(some_array)
    recursive_sort(some_array, [])
  end

  def recursive_sort(unsorted_array, sorted_array)
    if unsorted_array.length <=0
      return sorted_array
    end

    smallest = unsorted.pop
    still_unsorted =[]

    unsorted_array.each do |word|
      if word < smallest
        still_unsorted.push smallest
        smallest = x
      else
        still_unsorted.push tested_object
      end
  end

  sorted.push smallest

  recursive_sort still_unsorted, sorted_array
end
puts(sort(['can','feel', 'like','singing','a', 'can']))
