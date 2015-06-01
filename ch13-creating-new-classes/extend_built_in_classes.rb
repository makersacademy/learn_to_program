class Array
  def shuffle

        shuf = []

        arr = self

        while arr.length > 0
          rand_index = rand(arr.length)

          curr_index = 0
          new_arr = []

          arr.each do |item|
            if curr_index == rand_index
              shuf.push item
            else
              new_arr.push item
            end

            curr_index = curr_index + 1
          end

          arr = new_arr
        end

      shuf
    end
  end


puts(['a','f','e','s','x'].shuffle)


class Integer
def to_roman

  num = self

  thousands = (num / 1000)
  hundreds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10)

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
end


puts((1999).to_roman)
