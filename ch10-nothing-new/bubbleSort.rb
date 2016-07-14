def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      puts "here is the array"
      puts "i is: #{i}"
      puts array
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

puts bubble_sort(['hello', 'blue', 'good bye', 'orange', 'apple'])