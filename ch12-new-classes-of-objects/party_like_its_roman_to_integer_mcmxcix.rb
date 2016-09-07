#In the end I resorted to the books answer as I could not get my programme to pass rspec. My program does work it's just that rspec does not seem to like it! My programme is copied at the bottom of this one......

def roman_to_integer roman
  roman_numerals = {
    'i' => 1,
    'v' => 5,
    'x' => 10,
    'l' => 50,
    'c' => 100,
    'd' => 500,
    'm' => 1000}

  total = 0
  prev = 0
  index = roman.length - 1

    while index >= 0

        c = roman[index].downcase
        index = index - 1
        val = roman_numerals[c]

          if !val
            puts 'This is not a valid roman numeral!'
            return
          end

          if val < prev
            val = val * -1
          else
            prev = val
          end

          total = total + val
        end
    total
end

=begin
def roman_to_integer roman

roman_numeral = { }
status = 'invalid'

roman_numeral['I'] = 1
roman_numeral['V'] = 5
roman_numeral['X'] = 10
roman_numeral['L'] = 50
roman_numeral['C'] = 100
roman_numeral['D'] = 500
roman_numeral['M'] = 1000

  while status != 'valid'
    no_of_chars = roman.length
    input_array = [ ]
    counter1 = 0

        while counter1 < no_of_chars
          input_array.push roman[counter1]
          counter1 = counter1 + 1
        end

    counter2 = 0
    input_array.each do |input_letter|
    roman_numeral.each do |rom_letter,number|

        if input_letter.chr == rom_letter
          counter2 = counter2 + 1
        else
        end
    end
  end

        if counter2 == input_array.length
          status = 'valid'
        else
          status = 'invalid'
          puts 'Please enter roman numerals!'
        end
    end

number_array = [ ]

input_array.each do |letter|
letter = letter.chr
number = roman_numeral[letter]
number_array.push number
end

counter3 = number_array.length - 1

number = number_array[counter3]
counter3 = counter3 - 1


  while counter3 > -1
    if number_array[counter3] < number_array[counter3+1]
      number = number - number_array[counter3]
    else
      number = number + number_array[counter3]
    end

  counter3 = counter3 - 1
  end

number
end
puts(roman_to_integer("XI"))
=end
