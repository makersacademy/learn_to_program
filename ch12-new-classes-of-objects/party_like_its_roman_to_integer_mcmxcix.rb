puts 'Enter a Roman numeral to convert.'
roman = gets.chomp

def roman_to_integer roman
  conversions = { 'I' => 1,
                  'V' => 5,
                  'X' => 10,
                  'L' => 50,
                  'C' => 100,
                  'D' => 500,
                  'M' => 1000}
  answer = 0
  prev = 0
  index = roman.length - 1
  if index >= 0
    c = roman[index].downcase
    index = index - 1
    val = conversions[c]
    if !val
      puts 'Error: This is not a valid Roman numeral input.'
      return
    end

    if val < prev
      val = -(val) 
    else
      prev = val
    end
    answer = answer + val
  end

  answer
end

puts(roman_to_integer(roman))

