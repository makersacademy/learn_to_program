def input
  puts 'Write a list of two or more words, and I\'ll randomise the order. Press enter when you\'re done:'
  array = []

  while true
    word = gets.chomp
      if word == ''
        break
      else
        array.push word
      end
  end
  return array
end

def shuffle array

  random_array = []
  wordcount = -1
  position = 0
  position2 = 0

  array.each do |word|
    wordcount = wordcount + 1
  end

  while position2 <= wordcount
    position = rand(wordcount + 1)
    if array[position] != 'done'
      random_array.push array[position]
      array[position] = 'done'
      position2 = position2 + 1
    end
  end
return random_array
end

puts shuffle input
