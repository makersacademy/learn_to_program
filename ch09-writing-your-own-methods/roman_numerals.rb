def roman_numeral num

raise 'Must use positive integer' if num <= 0

roman = ''

roman << 'M' * (num / 1000)

roman << 'D' * (num % 1000 / 500)

roman << 'C' * (num % 500 / 100)

roman << 'L' * (num % 100 / 50)

roman << 'X' * (num % 50 / 10)

roman << 'V' * (num % 10 / 5)

roman << 'I' * (num % 5 / 1)


roman.gsub!('DCCCC', 'CM') if roman.include? 'DCCCC'

roman.gsub!('CCCC', 'CD') if roman.include? 'CCCC'

roman.gsub!('LXXXX', 'XC') if roman.include? 'LXXXX'

roman.gsub!('XXXX', 'XL') if roman.include? 'XXXX'

roman.gsub!('VIIII', 'IX') if roman.include? 'VIIII'

roman.gsub!('IIII', 'IV') if roman.include? 'IIII'

roman

end
