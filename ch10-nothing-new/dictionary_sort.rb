def sort array
  if array.length <= 1
    return array
  else

  new_array = array.pop
  first = array.select{ |word| word.downcase < new_array.downcase}
  last = array.select{ |word| word.downcase >= new_array.downcase}

  sort(first) + [new_array] + sort(last)
end
end

alphabet_array =  ["charlie","Dog","alpha","Beta","echo"]
puts sort( alphabet_array ).join(" ")
