def roman_to_integer roman
  
  # only strings with letters I, V, X, L, C, D, M allowed
  if roman =~ /[^ivxlcdm]/i
    puts "Not very Roman of you..."
    exit
  end
  
  #make my life easier, remove case
  roman.downcase!
  
  #will store the final number
  number = 0
  
  while roman.length > 0
      #let's do it letter by letter
      if roman[0] == 'm'
          number = number + 1000
          roman.slice!(/m/)
      elsif roman[0] == 'd'
          number = number + 500
          roman.slice!(/d/)
      elsif roman[0] == 'c'
          if roman[1] == 'm'
            number = number + 900
            roman.slice!(/cm/)
          elsif roman[1] == 'd'
            number = number + 400
            roman.slice!(/cd/)
          else 
            number = number + 100
            roman.slice!(/c/)
          end
      elsif roman[0] == 'l'
          number = number + 50
          roman.slice!(/l/)
      elsif roman[0] == 'x'
          if roman[1] == 'c'
            number = number + 90
            roman.slice!(/xc/)
          elsif roman[1] == 'l'
            number = number + 40
            roman.slice!(/xl/)
          else 
            number = number + 10
            roman.slice!(/x/)
          end
      elsif roman[0] == 'v'
          number = number + 5
          roman.slice!(/v/)
      elsif roman[0] == 'i'
          if roman[1] == 'x'
            number = number + 9
            roman.slice!(/ix/)
          elsif roman[1] == 'v'
            number = number + 4
            roman.slice!(/iv/)
          else 
            number = number + 1
            roman.slice!(/i/)
          end
      end

  end
  
  return number
  
end

puts roman_to_integer 'i'         #1
puts roman_to_integer 'iiI'       #3
puts roman_to_integer 'Iv'        #4
puts roman_to_integer 'V'         #5
puts roman_to_integer 'VIII'      #8
puts roman_to_integer 'XXVI'      #26
puts roman_to_integer 'LIII'      #53
puts roman_to_integer 'CXCIX'     #199
puts roman_to_integer 'DCLXXXII'  #682
puts roman_to_integer 'MMCMXLI'   #2941
puts roman_to_integer 'MMMX'      #3010
puts roman_to_integer 'mcmxcix'   #1999
puts roman_to_integer 'CCCLXV'    #365