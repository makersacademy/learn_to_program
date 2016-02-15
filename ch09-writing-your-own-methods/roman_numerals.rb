def roman_numeral(_num)
  roman = %w(M CM D CD C XC L XL X IX V IV I)
  arab = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  values = roman.zip(arab)
  c = 0
  values.map { |l, v| c, _num = _num.divmod v; l * c }.join ''
end
