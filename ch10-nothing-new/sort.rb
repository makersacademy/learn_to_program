def sort array
  return array if array.length <= 1

  new_array = array.pop
  first = array.select{ |word| word < new_array}
  last = array.select{ |word| word >= new_array}

  sort(first) + [new_array] + sort(last)
end

alphabet_array =  ["charlie","dog","alpha","beta","echo"]
puts sort( alphabet_array ).join(" ")
