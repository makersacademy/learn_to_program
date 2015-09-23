def english_number number
  # your code here

  str = ""

  if number == 0
    str= "zero"
  end

  def get_hundred num

    units = ["", "one", "two", "three", "four", "five", "six","seven", "eight", "nine"]
    tens  = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    teens = ["", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

    str = ""
    while num > 0
      case num.to_s.length
      when 3
        str = str + units[num.to_s[0,1].to_i] + " "+ "hundred "
        num = num % 100
      when 2
        num
        if num == 10
          str = str + "ten "
          num = 0
        elsif (num > 10 && num < 20)
          str = str + teens[num.to_s[1,1].to_i] + " "
          num = 0
         else 
          str = str + tens[num.to_s[0,1].to_i] + "-"
          num = num % 10
        end
      when 1
        str = str + units[num.to_s[0,1].to_i] + " "
        num = 0
      end
    end
    str[(str.length-1),1] == "-" ? str[0,(str.length-1)]+" " : str
  end


  while number > 0
    case 
    when (number.to_s.length < 4)
      str = str + get_hundred(number)
      number = 0
    when (number.to_s.length > 3 && number.to_s.length < 7)
      str = str + get_hundred(number/("1"+"0"*3).to_i) + "thousand "
      number = number%("1"+"0"*3).to_i 
    when (number.to_s.length > 6 && number.to_s.length < 10)
      str = str + get_hundred(number/("1"+"0"*6).to_i) + "million "
      number = number%("1"+"0"*6).to_i 
    when (number.to_s.length > 9 && number.to_s.length < 13)
      str = str + get_hundred(number/("1"+"0"*9).to_i) + "billion "
      number = number%("1"+"0"*9).to_i 
    when (number.to_s.length > 12 && number.to_s.length < 16)
      str = str + get_hundred(number/("1"+"0"*12).to_i) + "trillion "
      number = number%("1"+"0"*12).to_i 
    when (number.to_s.length > 15 && number.to_s.length < 19)
      str = str + get_hundred(number/("1"+"0"*15).to_i) + "quadrillion "
      number = number%("1"+"0"*15).to_i 
    when (number.to_s.length > 18 && number.to_s.length < 22)
      str = str + get_hundred(number/("1"+"0"*18).to_i) + "quintillion "
      number = number%("1"+"0"*18).to_i 
    when (number.to_s.length > 21 && number.to_s.length < 25)
      str = str + get_hundred(number/("1"+"0"*21).to_i) + "sextillion "
      number = number%("1"+"0"*21).to_i 
    when (number.to_s.length > 24 && number.to_s.length < 28)
      str = str + get_hundred(number/("1"+"0"*24).to_i) + "septillion "
      number = number%("1"+"0"*24).to_i 
    when (number.to_s.length > 27 && number.to_s.length < 31)
      str = str + get_hundred(number/("1"+"0"*27).to_i) + "octillion "
      number = number%("1"+"0"*27).to_i 
    when (number.to_s.length > 30 && number.to_s.length < 34)
      str = str + get_hundred(number/("1"+"0"*30).to_i) + "nonillion "
      number = number%("1"+"0"*30).to_i 
    when (number.to_s.length > 33 && number.to_s.length < 37)
      str = str + get_hundred(number/("1"+"0"*33).to_i) + "decillion "
      number = number%("1"+"0"*33).to_i 
    when (number.to_s.length > 36 && number.to_s.length < 40)
      str = str + get_hundred(number/("1"+"0"*36).to_i) + "undecillion "
      number = number%("1"+"0"*36).to_i 
    when (number.to_s.length > 39 && number.to_s.length < 43)
      str = str + get_hundred(number/("1"+"0"*39).to_i) + "duodecillion "
      number = number%("1"+"0"*39).to_i 
    when (number.to_s.length > 42 && number.to_s.length < 46)
      str = str + get_hundred(number/("1"+"0"*42).to_i) + "tredecillion "
      number = number%("1"+"0"*42).to_i 
    when (number.to_s.length > 45 && number.to_s.length < 49)
      str = str + get_hundred(number/("1"+"0"*45).to_i) + "quattuordecillion "
      number = number%("1"+"0"*45).to_i 
    when (number.to_s.length > 48 && number.to_s.length < 52)
      str = str + get_hundred(number/("1"+"0"*48).to_i) + "quindecillion "
      number = number%("1"+"0"*48).to_i 
    when (number.to_s.length > 51 && number.to_s.length < 55)
      str = str + get_hundred(number/("1"+"0"*51).to_i) + "sexdecillion "
      number = number%("1"+"0"*51).to_i 
    when (number.to_s.length > 54 && number.to_s.length < 58)
      str = str + get_hundred(number/("1"+"0"*54).to_i) + "septendecillion "
      number = number%("1"+"0"*54).to_i 
    when (number.to_s.length > 57 && number.to_s.length < 61)
      str = str + get_hundred(number/("1"+"0"*57).to_i) + "octodecillion "
      number = number%("1"+"0"*57).to_i 
    when (number.to_s.length > 60 && number.to_s.length < 64)
      str = str + get_hundred(number/("1"+"0"*60).to_i) + "novemdecillion "
      number = number%("1"+"0"*60).to_i 
    when (number.to_s.length > 63 && number.to_s.length < 67)
      str = str + get_hundred(number/("1"+"0"*63).to_i) + "vigintillion "
      number = number%("1"+"0"*63).to_i
    else
      number = 0
    end




  end

  str.strip

end



puts english_number(560123)
puts english_number(560123000)
puts english_number(560123000000)
puts english_number(560123000000000)
