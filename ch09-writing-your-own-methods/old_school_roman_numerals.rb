def old_roman_numeral num
    num = num.to_i
    (puts "Invalid input. Choose a number between 1 and 3000"; return) if ((num.to_i < 1) || (num.to_i > 3000))
  
    numerals = {1000=>"M", 500=>"D", 100=>"C", 50=>"L", 10=>"X", 5=>"V", 1=>"1" }
    roman = ""
  
    numerals.keys.each do |k|
        n = num/k
        if n > 0
            roman += numerals[k]*n
            num = num % k
        end
    end
  return roman
end
