def roman_numeral num
  order = 1000
  roman = ''
  while num > 0
    mid      = order * 5
    upper    = order * 10
    num_part = (num / order) * order

    if num_part == upper - order
      roman << edge_roman_numeral_part(order, upper)
    elsif num_part == mid - order
      roman << edge_roman_numeral_part(order, mid)
    else
      roman << standard_roman_numeral_part(num, order)
    end

    num      %= order
    order    /= 10
  end
  roman
end

def edge_roman_numeral_part order, edge_value
  roman_hsh = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
  roman_hsh[order] + roman_hsh[edge_value]
end


def standard_roman_numeral_part number, order
  roman_hsh = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
  mid = order * 5
  remainder = roman_hsh[order] * (number % mid / order)
  (number >= mid ? roman_hsh[mid] : "") + remainder
end
