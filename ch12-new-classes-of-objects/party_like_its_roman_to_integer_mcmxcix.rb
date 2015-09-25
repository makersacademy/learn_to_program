def roman_to_integer roman

  vals = {  'I' => 1,   'IV' => 4,
            'V' => 5,   'IX' => 9,
            'X' => 10,  'XL' => 40,
            'L' => 50,  'XC' => 90,
            'C' => 100, 'CD' => 400,
            'D' => 500, 'CM' => 900,
            'M' => 1000 }

  lgth = roman.length
  roman = roman.upcase

  roman.split('').each do |char|
    if vals[char] == nil
      return "not a valid roman numeral"
    end
  end

  integer = 0
  
  idx = -1

  while idx >= -lgth

    char = roman[idx]
    prev = roman[idx-1]
      
    if (prev == nil) || (vals[prev] >= vals[char])
      idx -= 1
      integer += vals[char]
    else
      idx -= 2
      integer += vals[prev + char]
    end

  end

  return integer

end