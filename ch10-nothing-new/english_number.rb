def english_number number
      set1 = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

      set2 = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

      set3 = ["hundred", "thousand", "million", "billion", "trillion"]

      trillions = ((number % 1000000000000000) / 1000000000000)
      billions = ((number % 1000000000000) / 1000000000)
      millions = ((number % 1000000000) / 1000000)
      thousands = ((number % 1000000) / 1000)
      hundreds = ((number % 1000) / 100)
      tens = ((number % 100) / 10)
      ones = number % 10
      string = ""

      if number == 0
        return "Zero"
      elsif number < 1
        return "Please enter a positive interger"
      end


      #string += set1[] + " " + set3[5] if thousands >= 1
      string += set1[trillions] + " " + set3[4] if trillions >= 1
      string += set1[billions] + " " + set3[3] if billions >= 1
      string += set1[millions] + " " + set3[2] if millions >= 1
      string += set1[thousands] + " " + set3[1] if thousands >= 1
      string += set1[hundreds] + " " + set3[0] if hundreds >= 1
      string += " " if number > 99 && (tens > 0 || ones > 0)
      string += set2[tens] if ones == 0
      string += set2[tens] + "-" if ones != 0 && ones > 19 && tens != 0
      string += set1[tens*10+ones] if tens < 2
      string += set1[ones] if ones != 0 && tens > 2
      string.capitalize
end

puts english_number(9001)
puts english_number(100)
puts english_number(534)
puts english_number(0.670000)
puts english_number(3)
puts english_number(0)
puts english_number(45)
puts english_number(213)
puts english_number(19)
puts english_number(4589754)
