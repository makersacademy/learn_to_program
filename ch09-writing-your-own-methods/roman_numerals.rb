def roman_numeral(num)

  numeral = { 1000 => 0, 900 => 0, 500 => 0, 400 => 0, 100 => 0, 90 => 0,
              50 => 0, 40 => 0, 10 => 0, 9 => 0, 5 => 0, 4 => 0, 1 => 0 }

  numeral.each do |k, v|
    numeral[k] = num/k if num >= k
    num = num%k        if num >= k
  end

     'M'*numeral[1000] + "CM"*numeral[900] + 'D'*numeral[500] +
     'CD'*numeral[400] + 'C'*numeral[100]  + 'XC'*numeral[90] +
     'L'*numeral[50]   + 'XL'*numeral[40]  + 'X'*numeral[10]  +
     'IX'*numeral[9]   + 'V'*numeral[5]    + 'IV'*numeral[4]  + 'I'*numeral[1]
end
