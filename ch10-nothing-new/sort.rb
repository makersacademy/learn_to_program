def sort arr

  #puts "Enter some names:"

  #arr = gets.chomp
  names = arr

  #while arr != ''
  #  names.push arr
  #  arr = gets.chomp
  #end

  names.each_index do |first|
    (first + 1..names.length).each do |second|
      if names[first] > names[second]
        names[first], names[second] = names[second], names[first]
        puts "[#{names.join(', ')}]"
      end
    end
  end
  puts "[#{names.join(', ')}]"
  end

sort ['Alex', 'Zara', 'Bill', 'Gerrard']

  #Move the 'smallest' word to the end of sorted array

  #Sort the words that are being added to the sorted array

  #Print the finished sorted array
