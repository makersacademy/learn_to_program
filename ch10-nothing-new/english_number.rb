def english_number(number)
  if number == 0
    return "zero"
  end

  if number < 0
    puts "Positive numbers only at the moment please. Maybe in the future."
  end

  three_number = number.to_s.reverse.each_char.each_slice(3).map{|x| x.reverse.join.to_i}

  names = [nil,'thousand', 'million', 'billion', 'trillion', 'quadrillion', 'quintillion', 'sextillion', 'septillion', 'octillion', 'nonillion', 'decillion', 'undecillion', 'duodecillion', 'tredecillion', 'quattuordecillion', 'quindecillion']

  three_number.map.with_index do |x, i|
    if x != 0
      [other(x), names[i]].compact.join(" ")
    end
  end.reverse.compact.join(" ")


end

def other(number)

  eng_no = ""

  singlePlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine",]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  tenPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]


  if number >= 100
    hundreds = number / 100
    number = number - (hundreds * 100)
    eng_no = singlePlace[hundreds - 1] + " hundred"
    if
      number > 0
      eng_no = eng_no + " "
    end
  end

  if (number == 10) or (number >= 20)
    tens = number / 10
    number = number - (tens * 10)
    eng_no = eng_no + tenPlace[tens - 1].to_s
    if number > 0
      eng_no = eng_no + "-"
    end
  end

  if (number > 10) && (number < 20)
    teens = number - 10
    number = number - (teens + 10)
    eng_no = eng_no + teenagers[teens - 1]
  end


  if number > 0
    eng_no = eng_no + singlePlace[number - 1].to_s
  end


  eng_no
end

puts english_number(1000)
puts english_number(10000000000)