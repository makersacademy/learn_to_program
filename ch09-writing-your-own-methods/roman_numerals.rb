def rom_num int

  thousands = (int / 1000)
  hundreds = (int % 1000 / 100)
  tens = (int %  50 / 10)
  ones = (int % 5 / 1)

  roman = " "

  roman << 'M' * thousands

  if hundreds > 5
    roman << 'D' + 'C' *

      if hundreds == 9
        roman << 'CM'
      elsif hundreds == 4
        roman << 'CD'
      else
        roman << 'D' * (int % 1000 / 500)
        roman << 'C' * (int % 500 / 100)
      end
  end

  puts rom_num 2438
