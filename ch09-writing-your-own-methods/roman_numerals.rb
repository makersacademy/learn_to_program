def roman_numeral_array_constructor single, midway, endpoint
	["#{single}","#{single*2}","#{single*3}","#{single}#{midway}","#{midway}","#{midway}#{single}","#{midway}#{single*2}","#{midway}#{single*3}","#{single}#{endpoint}"]
end

def roman_numeral num
  hundreds = roman_numeral_array_constructor 'C', 'D', 'M'
  tens = roman_numeral_array_constructor 'X', 'L', 'C'
  singles = roman_numeral_array_constructor 'I', 'V', 'X'
  answer = ''
  #thousands
  to_write = num / 1000
  num %= 1000
  answer += 'M' * to_write
  #hundreds
  answer += hundreds[(num / 100)-1] if (num / 100) > 0
  num %= 100
  #tens
  answer += tens[(num / 10)-1] if (num / 10) > 0
  num %= 10
  #singles
  answer += singles[num-1] if num > 0
  answer
end