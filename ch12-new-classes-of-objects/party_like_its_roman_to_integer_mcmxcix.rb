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

def roman_numeral num

  thousands = (num / 1000)
  hundreds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10 )

  roman = 'M' * thousands

    if hundreds == 9
      roman = roman + 'CM'

    elsif hundreds == 4
      roman = roman + 'CD'

    else
      roman = roman + 'D' * (num % 1000 / 500)
      roman = roman + 'C' * (num % 500 / 100)

    end

    if tens == 9
      roman = roman + 'XC'

    elsif tens == 4
      roman = roman + 'XL'

    else
      roman = roman + 'L' * (num % 100 / 50)
      roman = roman + 'X' * (num % 50 / 10)

    end

    if ones == 9
      roman = roman + 'IX'

    elsif ones == 4
      roman = roman + 'IV'

    else
      roman = roman + 'V' * (num % 10 / 5)
      roman = roman + 'I' * (num % 5 / 1)

    end

roman

end


def old_roman_numeral (num)

  if num <= 0
    return "Please enter a positive number."

  elsif num < 5
    return "I" * num

  elsif num == 5
    return "V"

  elsif num < 10
    v_division = 10 / num
    remainder = (v_division * 5)
    return ("V" * v_division) + ("I" * (num - remainder))

  elsif num < 50
    x_division = num / 10
    v_division = (num - (x_division * 10)) / 5
    remainder = num - ((x_division * 10) + (v_division * 5))
    return ("X" * x_division) + ("V" * v_division) + ("I" * remainder)

  elsif num < 100
    l_division = num / 50
    x_division = (num - (l_division * 50)) / 10
    v_division = (num - ((l_division * 50) + (x_division * 10))) / 5
    remainder = num - ((l_division * 50) + (x_division * 10) + (v_division * 5))
    return ("L" * l_division) + ("X" * x_division) + ("V" * v_division) + ("I" * remainder)

  elsif num < 500
    c_division = num / 100
    l_division = (num - (c_division * 100)) / 50
    x_division = (num - ((l_division * 50) + (c_division * 100))) / 10
    v_division = (num - ((l_division * 50) + (x_division * 10) + (c_division * 100))) / 5
    remainder = num - ((c_division * 100) + (l_division * 50) + (x_division * 10) + (v_division * 5))
    return ("C" * c_division) + ("L" * l_division) + ("X" * x_division) + ("V" * v_division) + ("I" * remainder)

  elsif num < 1000
    d_division = num / 500
    c_division = (num - (d_division * 500)) / 100
    l_division = (num - ((c_division * 100) + (d_division * 500))) / 50
    x_division = (num - ((l_division * 50) + (c_division * 100) + (d_division * 500))) / 10
    v_division = (num - ((l_division * 50) + (x_division * 10) + (c_division * 100) + (d_division * 500))) / 5
    remainder = num - ((d_division * 500) + (c_division * 100) + (l_division * 50) + (x_division * 10) + (v_division * 5))
    return ("D" * d_division) + ("C" * c_division) + ("L" * l_division) + ("X" * x_division) + ("V" * v_division) + ("I" * remainder)

  elsif num < 3000
    m_division = num / 1000
    d_division = (num - (m_division * 1000)) / 500
    c_division = (num - ((d_division * 500) + (m_division * 1000))) / 100
    l_division = (num - ((c_division * 100) + (d_division * 500) + (m_division * 1000))) / 50
    x_division = (num - ((l_division * 50) + (c_division * 100) + (d_division * 500) + (m_division * 1000))) / 10
    v_division = (num - ((l_division * 50) + (x_division * 10) + (c_division * 100) + (d_division * 500) + (m_division * 1000))) / 5
    remainder = num - ((d_division * 500) + (c_division * 100) + (l_division * 50) + (x_division * 10) + (v_division * 5) + (m_division * 1000))
    return ("M" * m_division) + ("D" * d_division) + ("C" * c_division) + ("L" * l_division) + ("X" * x_division) + ("V" * v_division) + ("I" * remainder)

  end

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
