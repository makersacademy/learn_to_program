def sort(array)
  capitalised_words = array.select{|word| word =~ /[A-Z]\w+/}
  array = array.map{|word| word.downcase}

  n = array.length
  (n-1).times do
  new_arr = []
    n.times do
      if array[1] == nil || array[0] < array[1]
        new_arr.push << array[0]
      array.delete_at(0)
      else
        new_arr << array[1]
        array.delete_at(1)
      end
    end
  array = new_arr
  end
  #replace downcase words with regex
  array.join(' ')
  capitalised_words.each {|word| array = array.gsub(/#{word.downcase}/, "#{word}")}
  array
end