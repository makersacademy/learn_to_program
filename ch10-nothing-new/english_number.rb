def english_number(n)
  array = n.to_s.split('')
  
  lions = { 0 => 'thousand', 1 => 'million', 2 => 'billion', 3 => 'trillion', 4 => 'quadrillion', 5 => 'quintillion', 6 => 'sextillion', 7 => 'septillion', 8 => 'octillion',
    9 => 'nonillion', 10 => 'decillion', 11 => 'undecillion', 12 => 'duodecillion', 13 => 'tredecillion', 14 => 'quattuordecillion', 15 => 'quindecillion' }
  
  first ||= ''; rest = []
    
    while array.length > 0
      if array.length % 3 == 0
        array[0..2].join('').to_i == 0 ? array.shift(3) : rest << "#{hundreds(array.shift(3).join('').to_i)} #{lions[(array.length-3)/3]}"
      else
        first = "#{hundreds(array.shift(array.length % 3).join('').to_i)} #{lions[(array.length-3)./3]} "
      end
    end
    
  "#{first}#{rest.join(' ')}".strip
end

def hundreds(n)
  word = n.to_s.split('')
  words = { '0' => 'zero', '1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six', '7' => 'seven', '8' => 'eight', '9' => 'nine', '10' => 'ten',
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

