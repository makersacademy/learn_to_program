def roman_numeral num
  left = num
  thousands = left /1000
  left = left - thousands*1000
  five_hundreds = left / 500
  left  = left - five_hundreds * 500
  hundreds = left / 100
  left = left - hundreds * 100
  fifties = left / 50
  left = left - fifties * 50
  tens = left / 10
  left = left - tens * 10
  fives = left / 5
  left = left - fives * 5
  ones = left
  array = []
  thousands.times{|x| array << "M"}
  five_hundreds.times{|x| array << "D"}
  hundreds.times{|x| array << "C"}
  fifties.times{|x| array << "L"}
  tens.times{|x| array << "X"}
    if ones == 4 && fives == 1
      array << "IX"
    elsif ones == 4 && fives == 0
      array << "IV"
    else
    fives.times{|x| array << "V"}
    ones.times{|x| array << "I"}
  end
  array.join
end
