def old_roman_numeral num
 	romans    = ['I',  'V',  'X',  'L',   'C',   'D',    'M']
  values    = [ 1,    5,   10,   50,   100,   500,   1000 ]
  result    = ''
  
  values.select!{ |v| v <= num }
  
  (values.length-1).downto(0) { |i|
    max_num = values[i]
    (num / max_num).times { 
      result += romans[i]
      num -= max_num
    }
  }
  
  return result
end