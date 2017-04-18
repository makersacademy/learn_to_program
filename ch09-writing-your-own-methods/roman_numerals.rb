def roman_numeral num
  symbols = [
            ['M', 1000],
            ['CM', 900],
            ['D', 500],
            ['CD', 400],
            ['C', 100],
            ['XC', 90],
            ['L', 50],
            ['XL', 40],
            ['X', 10],
            ['IX', 9],
            ['V', 5],
            ['IV', 4],
            ['I', 1]
            ]
            
  return '' if num == 0
  symbols.each do |str, int|
    if num >= int
      return str + roman_numeral(num - int)
    end
  end
end