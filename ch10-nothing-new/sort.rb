
def sort(arr)
  recursive_sort(arr, [])
end

def recursive_sort(original_array, sorted_array)

    if original_array.count <= 0
      return sorted_array
    end

    smallest = original_array.pop
    working_array = []

    original_array.each do |w|
      if w < smallest
        working_array.push(smallest)
        smallest = w
      else
        working_array.push(w)
      end
    end

    sorted_array.push smallest
    p smallest
    recursive_sort(working_array, sorted_array)

end


p sort(('A'..'Z').to_a.shuffle)
