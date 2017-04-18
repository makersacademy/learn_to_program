def old_roman_numeral num
  def old_roman_numeral(number)
    roman_string = ''
    if number / 1000 >= 1
      print = number /1000
      number = number - (print * 1000)
      print.times do
        roman_string += 'M'
      end
    end
    if number / 500 >= 1
      print = number / 500
      number = number - (print * 500)
      roman_string += 'D'
    end
    if number / 100 >= 1
      print = number/ 100
      number = number - (print * 100)
      print.times do
        roman_string += 'C'
      end
    end
    if number / 50 >= 1
      print = number/ 50
      number = number - (print * 50)
      print.times do
        roman_string += 'L'
      end
    end
    if number / 10 >= 1
      print = number/ 10
      number = number - (print * 10)
      print.times do
        roman_string += 'X'
      end
    end
    if number / 5 >= 1
      print = number/ 5
      number = number - (print * 5)
      print.times do
        roman_string += 'V'
      end
    end
    if number / 1 >= 1
      print = number/ 1
      number = number - (print * 1)
      print.times do
        roman_string += 'I'
      end
    end
    return roman_string
  end
end
