def sort(array)
  n = array.length
  loop do
    swapped = false

  (n-1).times do |i|
    if array[i] > array[i+1]
      array[i], array[i+1] = array[i+1], array[i]
      swapped = true
    end
  end
    break if not swapped
  end
  array
end

puts(sort(['can','feel','singing','like','a','can']))
