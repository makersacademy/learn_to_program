def english_number n
  word = n.to_s.split('')
  words = { '1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six', '7' => 'seven', '8' => 'eight', '9' => 'nine', '10' => 'ten',
    '11' => 'eleven', '12' => 'twelve', '13' => 'thirteen', '14' => 'fourteen', '15' => 'fifteen', '16' => 'sixteen', '17' => 'seventeen',
    '18' => 'eighteen', '19' => 'nineteen', '20' => 'twenty', '30' => 'thirty', '40' => 'forty', '50' => 'fifty', '60' => 'sixty', '70' => 'seventy',
    '80' => 'eighty', '90' => 'ninety', '100' => 'hundred' }
  if n <= 20 || n == 30 || n == 40 || n == 50 ||n == 60||n == 70||n == 80||n == 90
    words[n.to_s]
  elsif n < 100
    "#{words[(word[0].to_i*10).to_s]}-#{words[word[1]]}"
  elsif n % 100 == 0
     "#{words[word[0]]} #{words['100']}"
  elsif n % 10 == 0
    "#{words[word[0]]} #{words['100']} #{words[(word[1].to_i*10).to_s]}"
  elsif word[1] == '1'
    "#{words[word[0]]} #{words['100']} #{words[(word[1]+word[2])]}"
  elsif word[1] == '0'
    "#{words[word[0]]} #{words['100']} #{words[word[2]]}"
  else
    "#{words[word[0]]} #{words['100']} #{words[(word[1].to_i*10).to_s]}-#{words[word[2]]}"
  end
end

puts english_number(1)
puts english_number(10)
puts english_number(35)
puts english_number(79)
puts english_number(103)
puts english_number(816)
puts english_number(923)
puts english_number(911)