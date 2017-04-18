def english_number(n) 
  return 'zero' if n == 0 
  units = ["","one","two","three","four","five","six","seven","eight","nine","ten"]
  tens = %w{nil ten twenty thirty forty fifty sixty seventy eighty ninety}
  teens = %w{nil eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
  three_digit_names = ["","thousand","million"," billion"," trillion","quadrillion","quintillion","sextillion","septillion","octillion","nonillion","decillion","undecillion","duodecillion","tredecillion","quattuordecillion","quindecillion"]

  if n == ""
    return "" + english_number(remove_first_3_pad_digits(n.to_s)).squeeze(" ")
  elsif  n <= 10 
    return units[n]
  elsif n.between?(11,19)
    return teens[n%10]
  elsif n < 100
    return tens[n/10] + ((n%10 == 0) ? "" : "-" + units[n%10])
  elsif n < 1000
    return units[n.to_s[0].to_i] + " hundred" + ((n%100 == 0) ? "" : " #{ english_number(n%100)}")
  else
    result =  (english_number(first_three_padded_digits(n.to_s)) + " " + three_digit_names[(n.to_s.size - 1)/3] + " " + english_number(remove_first_3_pad_digits(n.to_s)))
    result.size > 4 ? result.sub('zero','').strip.squeeze(" ") : result
  end

end


#takes the string rep of an integer, pads it with leading zeros to be in this format ddd.ddd.ddd... and returns the first 3 digits, removing any leading zeros

def first_three_padded_digits n 
  while n.size % 3 != 0
    n = ("0" + n.to_s)
  end  
  n[0..2].to_i
end

def remove_first_3_pad_digits n
  while n.size % 3 != 0
    n = ("0" + n.to_s)
  end 
    (n[3..-1].to_i == 0) ? n[6..-1].to_i  : n[3..-1].to_i
end
