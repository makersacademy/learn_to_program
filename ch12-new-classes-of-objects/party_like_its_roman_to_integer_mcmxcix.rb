def roman_to_integer roman
  cval = {
    "i" => 1,
    "v" => 5,
    "x" => 10,
    "l" => 50,
    "c" => 100,
    "m" => 1000,
  }
  
  total = 0
  roman.downcase!
  roman.each_char.with_index do |char, i|
    if i < roman.size - 1
      if cval[char] < cval[roman[i+1]]
       total -= cval[char]
      else
        total += cval[char]
      end
    else
      total += cval[char]
    end
  end
    p total 
end

roman_to_integer('CCCLXV')