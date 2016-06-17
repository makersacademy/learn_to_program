def sort(array)

  return array if array.length == 0

  pick = array.pop
  low = array.select {|x| x.downcase <= pick.downcase}
  high = array.select {|x| x.downcase > pick.downcase}

  sort(low) + [pick] + sort(high)

end

puts sort(['banana', 'apple', 'orange', 'grape'])