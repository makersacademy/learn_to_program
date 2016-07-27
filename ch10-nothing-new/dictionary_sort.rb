def dictionary_sort(array)
  n = array.length
  loop do
    swapped = false

  (n-1).times do |i|
    if array[i].downcase > array[i+1].downcase
      array[i], array[i+1] = array[i+1], array[i]
      swapped = true
    end
  end
    break if not swapped
  end
  array
end

puts(dictionary_sort(['can','feel','singing.','like','A','can']))
