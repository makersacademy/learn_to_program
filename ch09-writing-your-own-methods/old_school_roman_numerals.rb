def old_roman_numeral num
  # your code here

  roman = ""
  ary   = []


  def putChar (num, onum, char, roman)
    t = num / onum
    num = num % onum
    roman = roman + char * t
    ary = [roman, num]
  end


  while num > 0
    case
    when num >= 1000
      ary = putChar(num, 1000,  "M", roman)
      num = ary[1]
      roman = ary[0]
    when num >= 500
      ary = putChar(num, 500,  "D", roman)
      num = ary[1]
      roman = ary[0]
    when num >= 100
      ary = putChar(num, 100,  "C", roman)
      num = ary[1]
      roman = ary[0]
    when num >= 50
      ary = putChar(num, 50,  "L", roman)
      num = ary[1]
      roman = ary[0]
    when num >= 10
      ary = putChar(num, 10,  "X", roman)
      num = ary[1]
      roman = ary[0]
    when num >= 5
      ary = putChar(num, 5,  "V", roman)
      num = ary[1]
      roman = ary[0]
    else
      roman = roman + "I" * num
      num = 0
    end
  end
  roman


end
