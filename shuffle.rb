
def shuffle array_of_words
  
 #define an array
shuffled_array = [] 

 #iterate over an array 
  
  
  while shuffled_array.uniq.length < array_of_words.length
  
    array_of_words.each do |word|
         
    shuffled_array.push array_of_words[rand(array_of_words.length)]
  
    end
  end

  return shuffled_array.uniq!
     
end

  
puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])






