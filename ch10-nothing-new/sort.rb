some_array = ['apple', 'banana', 'tomato', 'bread', 'wine', 'beer']
sorted_array = []

def sort some_array, sorted_array
  if some_array =! []
    first = some_array[0]
    some_array.select{|x| x <}
        sort some_array, sorted_array
      else
        sort some_array, sorted_array
      end
  else
    return sorted_array
  end
end
