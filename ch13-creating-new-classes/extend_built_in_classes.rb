array = []
random_words = 'start'
while random_words != ""
puts "Please enter one word per line, push 'enter' to exit"
random_words = gets.chomp
array.push random_words
end

class Integer
  
  def shuffle some_array
      #recursive_shuffle some_array, []
      puts "Hello"
      recursive_shuffle self, []
      
  end

  def recursive_shuffle unsorted_array, sorted_array
  #def recursive_shuffle self, sorted_array
          #x = (0...(unsorted_array.count)).sort_by{rand}
          x = (0...(self.count)).sort_by{rand}
          #x.each{|num| sorted_array << unsorted_array[num]}
          x.each{|num| sorted_array << self[num]}
          
          return sorted_array
  end

  #shuffle(['pear','apple', 'banana','orange','blackberry'])
end

array.shuffle 
print array
