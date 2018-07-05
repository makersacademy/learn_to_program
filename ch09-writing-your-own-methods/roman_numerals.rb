def roman_numeral num
  values = [
    [1000, 'M'],
    [900, 'CM'],
    [500, 'D'],
    [400, 'CD'],
    [100, 'C'],
    [50, 'L'],
    [40, 'XL'],
    [10, 'X'],
    [9, 'IX'],
    [5, 'V'],
    [4, 'IV'],
    [1, 'I']
  ]
  new_roman_array = ""

  values.each do |number, roman|
    while num >= number
      new_roman_array << roman
      num -= number
    end
  end

  new_roman_array
end
