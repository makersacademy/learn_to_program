def roman_numeral (num)
#exceptions all numbers with 4 & 9
#First need to deduce whether there are any 4's or 9's in num
  thous   = num/1000
  hunds   = num%1000/100 #extract the 100's from a 1000's number by using %
  tens    = num%100/10
  ones    = num%10

numeral = "M" * thous #only up to 3000 so don't worry about 4000/9000

    if hunds == 9  #if statement to cover the exceptions with 100's
      numeral = numeral + "CM" #building the variable numeral by including previous thousands
    elsif hunds == 4
      numeral = numeral + "CD"
    else #else to cover 500s and up to 300s
      numeral = numeral + "D" * (num % 1000 / 500) #extract 500 if 500 or over
      numeral = numeral + "C" * (num % 500 / 100) #extract remaining 100's
    end

    if tens == 9
      numeral = numeral + "XC"
    elsif tens == 4
      numeral = numeral + "XL"
    else
      numeral = numeral + "L" * (num % 100 / 50)
      numeral = numeral + "X" * (num % 50 / 10)
    end

    if ones == 9
      numeral = numeral + "IX"
    elsif ones == 4
      numeral = numeral + "IV"
    else
      numeral = numeral + "V" * (num % 10 / 5)
      numeral = numeral + "I" * (num % 5 / 1)
    end
numeral
end

puts roman_numeral(2469)
