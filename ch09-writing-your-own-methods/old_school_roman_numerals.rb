def old_roman_numeral num
  roman_bank = { 1000=>"M", 500=>"D", 100=>"C", 50=>"L", 10=>"X", 5=>"V", 1=> "I" }

  # Check for thousands
  roman = ""

  roman_bank.each do |value, letter|
  	roman << letter*(num / value)
  	num = num % value
  end
  return roman
end