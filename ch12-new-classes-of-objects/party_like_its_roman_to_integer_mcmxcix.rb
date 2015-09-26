def roman_to_integer roman
  roman.downcase!
  roman = roman.gsub('iv', 'iiii').gsub('ix', 'viiii').gsub('xl', 'xxxx').gsub('xc', 'lxxxx').gsub('cd', 'cccc').gsub('cm', 'dcccc')
  symbols = 'mdclxvi'.chars
  values = [1000, 500, 100, 50, 10, 5, 1]
  total = 0
  while !symbols.empty? do
    count = 0
    while roman[0] == symbols[0] do
      count += 1
      roman = roman[1..-1]
    end
    total += count * values[0]
    values.shift
    symbols.shift
  end
  raise "not a valid Roman numeral" if !roman.empty?
  total
end
