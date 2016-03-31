def old_roman_numeral num
  array = []
  (num / 1000).times{|x| array << "M"}
  (num % 1000 / 500).times{|x| array << "D"}
  (num % 500 / 100).times{|x| array << "C"}
  (num % 100 / 50).times{|x| array << "L"}
  (num % 50 / 10).times{|x| array << "X"}
  (num % 10 / 5).times{|x| array << "V"}
  (num % 5 / 1).times{|x| array << "I"}
  array.join
end
