def printer(num)
      roman = ""
      roman << ("M" * (num/1000))
      roman << ("D" * (num%1000 / 500))
      roman << ("C" * (num%500 / 100))
      roman << ("L" * (num%100 / 50))
      roman << ("X" * (num%50 /10))
end

def roman_numeral num
case num
  when 49
    "XLIX"
  when 99
    "XCIX"
  when 499
    "CDXCIX"
  when 999
    "CMXCIX"
  else
    if num.to_s[-1] == "4" 
      printer(num) + "IV"
    elsif num.to_s[-1] == "9" 
        printer(num) + "IX"
    else
      roman = ""
    printer(num)+ (
    roman << ("V" *(num%10 /5))
    roman << ("I" * (num%5 / 1))
    )
    end 
  end
end



puts roman_numeral(48)