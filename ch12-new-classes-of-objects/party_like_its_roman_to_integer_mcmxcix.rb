#Uses Chris P's code for calculation and character check...

def roman_to_integer roman

#hash of roman number characters
roman_chars = {}
roman_chars['I'] = 1
roman_chars['V'] = 5
roman_chars['X'] = 10
roman_chars['L'] = 50
roman_chars['C'] = 100
roman_chars['D'] = 500
roman_chars['M'] = 1000

total = 0
prev = 0

index = roman.length-1 #get length of roman character string

while index >= 0
    c = roman[index].upcase
    index = index - 1
    val = roman_chars[c]
    
    #checks if a real Roman character...
    if !val
      puts 'This is not a valid roman numeral!'
      return
    end

    #takes into account 9s and 4s and stuff...
    if val < prev
      val = val * -1
    else
      prev = val
    end
    
    total = total + val
end

  total
end

puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))


  
  
