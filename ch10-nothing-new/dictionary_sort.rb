def dictionary_sort arr
  capitals = arr.select{|word| word == word.capitalize}
  recursive_sort(arr, [], capitals) 
end

def recursive_sort some_arr, sorted_arr, capitals
  some_arr.map!{|word| word.downcase}
  return sorted_arr.map{|word| (capitals.include?(word.capitalize)) ? word.capitalize : word } if some_arr == [] 
  sorted_arr.push(some_arr.min)
  some_arr.delete_at(some_arr.index(some_arr.min))
  recursive_sort(some_arr, sorted_arr, capitals)
end
