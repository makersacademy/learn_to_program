class Integer
  # your code here
  def factorial
      if self < 0
          return "Requires positive integer"
          elsif self ==1
          return 1
      else 
          
end

class Array
    def shuffle (arr)
  shuffled_array []
  
 
  while arr.length > 0
  rand_arr_object = rand(arr.length)
  
  selected = 0
  new_array = []
  
  arr.each {|x|
  
  if selected == rand_arr_object
      return shuf.push(item)
  else
      return new_array.push(item)
  end
  selected = selected + 1
      
  }
  
  arr= new_array
end
shuffle
end

def roman_integers
    
      roman = ''
  
  roman = roman + 'M' * (num / 1000)
  roman = roman + 'D' * (num % 1000 / 500)
  roman = roman + 'C' * (num % 500 / 100)
  roman = roman + 'L' * (num % 100 / 50)
  roman = roman + 'X' * (num % 50 / 10)
  roman = roman + 'V' * (num % 10 / 5)
  roman = roman + 'I' * (num % 5 / 1)
  roman
end 
end 

#---------class a:integer and array different arrangement?
