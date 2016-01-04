def roman_numeral num
  numeral_str = ""
  divisor = 1000
  numerals_hash = {1=>"I", 5=>"V", 10=>"X", 50=>"L", 100=>"C", 500=>"D", 1000=>"M"}

  while num > 0
    current = num / divisor
    num = num % divisor
    if current > 0
      unless divisor == 1000
        if current == 9
          numeral_str << numerals_hash[divisor] << numerals_hash[divisor * 10]
          current -= 9
        elsif current >= 5
          numeral_str << numerals_hash[5 * divisor]
          current -= 5
        elsif current == 4
          numeral_str << numerals_hash[divisor] << numerals_hash[divisor * 5]
          current -= 4
        end
      end
      numeral_str << numerals_hash[divisor] * current unless current == 0
    end
    divisor = divisor / 10
  end

  numeral_str
end
