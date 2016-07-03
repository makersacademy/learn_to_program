def old_roman_numeral(num)
  numeral = {1000 => 0, 500 => 0, 100 => 0, 50 => 0, 10 => 0, 5 => 0, 1 => 0}

  numeral.each do |k, v|
    numeral[k] = num/k if num >= k
    num = num%k        if num >= k
  end
     'M'*numeral[1000] + 'D'*numeral[500] + 'C'*numeral[100]  +
     'L'*numeral[50] + 'X'*numeral[10] +'V'*numeral[5] + 'I'*numeral[1]
end
