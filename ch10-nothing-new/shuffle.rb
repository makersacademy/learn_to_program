def shuffle(array)
  array.size.times do |i|
      random = i + rand(array.size-i)
      array[i], array[random] = array[random], array[i]
  end
  array
end