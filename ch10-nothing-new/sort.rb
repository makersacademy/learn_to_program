def sort(array)

  return array if array.length == 0

  pick = array.pop
  low = array.select {|x| x <= pick}
  high = array.select {|x| x > pick}

  sort(low) + [pick] + sort(high)

end

puts sort(['banana', 'apple', 'orange', 'grape'])