def dictionary_sort some_array
recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
final_array = []
sorting_hash = Hash.new 0
lookup_value = 0
sorting_array = []
unsorted_array.each do |x|
  sorting_hash[x.downcase] = x
end
unsorted_array.each do |x|
  sorting_array.push(x.downcase)
end
while sorting_array.length > 0
  smallest_word = sorting_array.pop
  sorting_array.each do |x|
    if x == smallest_word
      sorted_array.push(x)
    elsif x < smallest_word
      sorting_array.push(smallest_word)
      smallest_word = x
    end
  end
    sorting_array.delete(smallest_word)
    sorted_array.push(smallest_word)
  end
sorted_array.each do |x|
  final_array.push(sorting_hash[x])
end
puts final_array
return final_array
end
