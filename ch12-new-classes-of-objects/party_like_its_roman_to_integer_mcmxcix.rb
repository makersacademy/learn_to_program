def roman_to_integer roman
  digit_vals = {
  'i' => 1,
  'v' => 5,
  'x' => 10,
  'l' => 50,
  'c' => 100,
  'd' => 500,
  'm' => 1000}
  #setting the roman numeral letters to values utilising a hash
  total = 0
  prev = 0
  #setting up the initial conditions
  index = roman.length - 1
  #starting with the initial index position
  while index >= 0
    c = roman[index].downcase
    #ensuring all the roman numerals are in lowercase so don't have to work with both cases
    index = index - 1
    val = digit_vals[c]
    #moving the index along the numeral and comparing to the hash to ensure they are all roman numerals
    if !val
      puts 'This is not a valid roman numeral!'
      return
      #ensuring a valid roman numeral was entered
    end
    if val < prev
      val = val * -1
      #ensuring it is a positive value
    else
      prev = val
    end
    total = total + val
    #calculating the value
 end
total
#output total value
end

puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))
