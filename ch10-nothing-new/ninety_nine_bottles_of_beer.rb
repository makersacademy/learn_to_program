# your code here

def get_hundred num

  units = ["", "one", "two", "three", "four", "five", "six","seven", "eight", "nine"]
  tens  = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teens = ["", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  str = ""
  while num > 0
    case num.to_s.length
    when 3
      str = str + units[num.to_s[0,1].to_i] + " "+ "hundred "
      num = num % 100
    when 2
      num
      if num == 10
        str = str + "ten "
        num = 0
      elsif (num > 10 && num < 20)
        str = str + teens[num.to_s[1,1].to_i] + " "
        num = 0
      else
        str = str + tens[num.to_s[0,1].to_i] + "-"
        num = num % 10
      end
    when 1
      str = str + units[num.to_s[0,1].to_i] + " "
      num = 0
    end
  end
  str
end

def english_number number
  str = ""
  if number == 0
    str = "zero"
  end
  while number > 0
    case
    when (number.to_s.length < 4)
      str = str + get_hundred(number)
      if str[str.length-1,1] == "-"
         str = str[0, (str.length - 1)]
      end
      number = 0
    when (number.to_s.length > 3 && number.to_s.length < 7)
      str = str + get_hundred(number/1000) + "thousand "
      number = number%1000
    when (number.to_s.length > 6 && number.to_s.length < 10)
      str = str + get_hundred(number/1000000) + "million "
      number = number%1000000
    when (number.to_s.length > 9 && number.to_s.length < 13)
      str = str + get_hundred(number/1000000000) + "billion "
      number = number%1000000000
    when (number.to_s.length > 12 && number.to_s.length < 16)
      str = str + get_hundred(number/1000000000000) + "trillion "
      number = number%1000000000000
    when (number.to_s.length > 15 && number.to_s.length < 19)
      str = str + get_hundred(number/1000000000000000) + "zillion "
      number = number%1000000000000000
    end
  end
  str.strip
end


bottles = 23



bottles.downto(2) do |count|

  txt = "#{english_number count}"
  puts "#{txt} bottles of beer on the wall, #{txt} bottles of beer."

  txt = "#{english_number(count-1)}"
  if count == 2
    puts "Take one down and pass it around, one bottle of beer on the wall."
  else
    puts "Take one down and pass it around, #{txt} bottles of beer on the wall."
  end
  puts
  
end

puts "one bottle of beer on the wall, one bottle of beer."
puts "Take one down and pass it around, no more bottles of beer on the wall."
puts
puts "No more bottles of beer on the wall, no more bottles of beer. "
puts "Go to the store and buy some more, #{english_number(bottles)} bottles of beer on the wall."

