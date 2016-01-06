def english_number(num, rec=0)
  eng_unit = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  eng_ten  = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  eng_big = ['', 'hundred', 'thousand', 'million', 'billion', 'trillion', 'quadrillion','quintillion', 'sextillion', 'septillion','octillion', 'nonillion','decillion', 'undecillion', 'duodecillion', 'tredecillion','quattuordecillion', 'quindecillion']
  
  if num == 0 && rec == 0
    "zero"
  elsif num == 0 && rec > 0 
    ""
  elsif num > 0 && num <= 19
   "#{eng_unit[num]}"
  elsif [20, 30, 40, 50, 60, 70, 80, 90].include?(num)
    "#{eng_ten[num/10]}"
  elsif num < 100
    "#{eng_ten[num/10]}-#{english_number(num%10, 1)}"
  elsif num < 1000
    "#{eng_unit[num/100]}" " #{eng_big[1]}" " #{english_number(num%100, 1)}"
  elsif num < 10000
    "#{eng_unit[num/1000]}" " #{eng_big[2]}" " #{english_number(num%1000, 1)}"
  elsif num < 1_000_000
    "#{english_number(num/1000)}" " #{eng_big[2]}" " #{english_number(num%1000, 1)}" 
  elsif num < 1_000_000_000
    "#{english_number(num/1_000_000)}" " #{eng_big[3]}" " #{english_number(num%1_000_000, 1)}"
  elsif num < 1_000_000_000_000
    "#{english_number(num/1_000_000_000)}" " #{eng_big[4]}" " #{english_number(num%1_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000)}" " #{eng_big[5]}" " #{english_number(num%1_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000)}" " #{eng_big[6]}" " #{english_number(num%1_000_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000_000)}" " #{eng_big[7]}" " #{english_number(num%1_000_000_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000_000_000)}" " #{eng_big[8]}" " #{english_number(num%1_000_000_000_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000_000_000_000)}" " #{eng_big[9]}" " #{english_number(num%1_000_000_000_000_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000_000_000_000_000)}" " #{eng_big[10]}" " #{english_number(num%1_000_000_000_000_000_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000_000_000_000_000_000)}" " #{eng_big[11]}" " #{english_number(num%1_000_000_000_000_000_000_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000_000_000_000_000_000_000)}" " #{eng_big[12]}" " #{english_number(num%1_000_000_000_000_000_000_000_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000_000_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000_000_000_000_000_000_000_000)}" " #{eng_big[13]}" " #{english_number(num%1_000_000_000_000_000_000_000_000_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000_000_000_000_000_000_000_000_000)}" " #{eng_big[14]}" " #{english_number(num%1_000_000_000_000_000_000_000_000_000_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000_000_000_000_000_000_000_000_000_000)}" " #{eng_big[15]}" " #{english_number(num%1_000_000_000_000_000_000_000_000_000_000_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000)}" " #{eng_big[16]}" " #{english_number(num%1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000, 1)}"
  elsif num < 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
    "#{english_number(num/1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000)}" " #{eng_big[17]}" " #{english_number(num%1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000, 1)}"
  else 
    "Seriously?!"
    end.strip
end
