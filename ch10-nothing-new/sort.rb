def sort (arr)
  recursive_sort(arr, [])
end

def recursive_sort arr, sorted_arr
  if arr.length <= 0
    return sorted_arr
    #=>  result unreachable
  end

    smallest = arr[0]

    arr.each_index do |index|
      if arr[index].chr < smallest.chr
        smallest = arr[index]
        #=>  result unreachable
      end
    end
    index_to_delete = arr.index(smallest)
    arr.delete_at(index_to_delete)
    sorted_arr << smallest

    puts 'smallest: ' + smallest
    puts 'unsorted: ' + arr.inspect
    puts 'sorted: ' + sorted_arr.inspect
    recursive_sort arr, sorted_arr

end

words = ['can','feel','singing','like','a','Can']

sort(words)
