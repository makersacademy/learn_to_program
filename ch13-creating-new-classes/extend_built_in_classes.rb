class Integer
  def factorial
    num = self
    if num < 0
    return 'You can\'t take the factorial of a negative number!'
    end
    if num <= 1
      1
    else
      num * (num-1).factorial
    end
  end

  def to_roman
# old school style
    roman_old = ""
    num = self
    left = num

    thousands = num / 1000
    roman_old << "M" * thousands
    left %= 1000

    hundreds = left / 100
    roman_old << build_string_part(hundreds,"D","C")
    left %= 100

    tens = left / 10
    roman_old << build_string_part(tens,"L","X")
    left %= 10

    roman_old << build_string_part(left,"V","I")
  end

  def build_string_part number, roman1, roman2
    string_part = ""
    if number >= 5
      string_part << (roman1 + roman2 * (number - 5))
    else
      string_part << roman2 * number
    end
    string_part
  end


  def to_eng
    number = self
    if number < 0  # no negative numbers
      return 'This method does not work with negative numbers!'
    end
    if number == 0
      return 'zero'
    end

    numString = ''  # This is the string we will return.

    onesPlace    = ['one',        'two',       'three',    'four',     'five',
                    'six',        'seven',     'eight',    'nine']
    tensPlace    = ['ten',        'twenty',    'thirty',   'forty',    'fifty',
                    'sixty',      'seventy',   'eighty',   'ninety']
    teenagers    = ['eleven',     'twelve',    'thirteen', 'fourteen', 'fifteen',
                    'sixteen',    'seventeen', 'eighteen', 'nineteen']
    zillionPlace = ['thousand',     'million',     'billion',    'trillion',
                    'quadrillion',  'quintillion', 'sextillion', 'septillion',
                    'octillion',    'nonillion',   'decillion',  'undecillion',
                    'duodecillion', 'tredecillion','quattuordecillion',
                    'quindecillion']

    # left is how much of the number we still have left to write out.
    # "write" is the part we are writing out right now.

    left  = number

    n = zillionPlace.length - 1
    while n >= 0
      # How many zillions left to write out?
      write = left/(1.to_s + '000'*(n + 1)).to_i
      # Subtract off those numbers.
      left  = left - write*(1.to_s + '000'*(n + 1)).to_i

      if write > 0
        # Now here's a really silly trick:
        zillions = write.to_eng
        numString = numString + zillions + ' ' + zillionPlace[n]


        if left > 0
          # So we don't write 'two millionfifty-one'...
          numString = numString + ' '
        end
      end
      n = n - 1
    end


    write = left/100         # How many hundreds left to write out
    left  = left - write*100 # Subtract those hundreds

    if write > 0
      numString = numString + onesPlace[write-1] + ' hundred'
      # The "-1" is because write[3] is 'four', not 'three'

      if left > 0
        # So we don't write 'five hundredsixtyfour'...
        numString = numString + ' '
      end
    end

    write = left/10          # How many tens left to write out?
    left  = left - write*10  # Subtract off those tens

    if write > 0
      if ((write == 1) and (left > 0))
        # Since we can't write "tentytwo"instead of "twelve",
        # we have to make a special exception for these.
        numString = numString + teenagers[left-1]
        # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

        # Since we took care of the digit in the ones place already,
        # we have nothing left to write.
        left = 0
      else
        numString = numString + tensPlace[write-1]
        # The "-1" is because teenagers[3] is 'forty', not 'thirty'.
      end

      if left > 0
        # So we don't write 'sixtyfour'...
        numString = numString + '-'
      end
    end

    write = left  # How many ones left to write out?
    left = 0      # Subtract off those ones

    if write > 0
      numString = numString + onesPlace[write-1]
      # The "-1" is because teenagers[3] is 'four', not 'three'.
    end

    # Now we return "numString"...
    numString
  end
end
