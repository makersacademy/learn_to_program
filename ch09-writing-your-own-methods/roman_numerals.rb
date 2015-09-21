def roman_numeral num

  a = [[1000, "M"], [500, "D"], [100, "C"], [50, "L"], [10, "X"], [5, "V"], [1, "I"]]

  i = num
  to_print = ''
  b = 0
  while i != 0
    to_cut = (i - (i % a[b][0]))
    to_print << a[b][1] * (to_cut / a[b][0])
    i = i - to_cut
    b += 1
  end


  #sub the 4's
  to_print.gsub!(/IIII/, 'IV')
  to_print.gsub!(/XXXX/, 'XL')
  to_print.gsub!(/CCCC/, 'CD')

  #reverse 9's
   to_print.gsub!(/DCD/, 'CM')
   to_print.gsub(/LXL/, 'XC')
   to_print.gsub!(/VIV/, 'IX')
  #to_print.gsub!(/VIV/, 'IX')
  #to_print.gsub(/LXL/, 'XC')
  #to_print.gsub!(/DCD/, 'MC')



  to_print

end


puts roman_numeral 9999
puts roman_numeral 4444

