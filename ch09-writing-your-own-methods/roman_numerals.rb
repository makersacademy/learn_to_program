def roman_numeral num
  base_5_convert(num.to_s[-4].to_i, 'M', '_', '_') + 
  base_5_convert(num.to_s[-3].to_i, 'C', 'D', 'M') + 
  base_5_convert(num.to_s[-2].to_i, 'X', 'L', 'C') + 
  base_5_convert(num.to_s[-1].to_i, 'I', 'V', 'X')
end

def base_5_convert n, unit, five, ten
  if n < 4
    unit * n
  elsif n == 4
    unit + five
  elsif n == 5
    five
  elsif n < 9
    five + (unit * (n-5))
  else
    unit + ten
  end
end
