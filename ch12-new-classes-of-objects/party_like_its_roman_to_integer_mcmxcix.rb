#Well, obviously overcomplicated... But at least, it works)
#And learned some new stuff on the way...

def roman_to_integer roman

  roman.upcase!

  if roman.scan(/[ABEFGHJKNOPQRSTUWYZ]/).length != 0
  	return puts "Not a roman number!"
  end

  roman.gsub!(/IV/, 'IV' => ' 4')
  roman.gsub!(/IX/, 'IX' => ' 9')
  roman.gsub!(/XL/, 'XL' => ' 40')
  roman.gsub!(/XC/, 'XC' => ' 90')
  roman.gsub!(/CD/, 'CD' => ' 400')
  roman.gsub!(/CM/, 'CM' => ' 900')
  roman.gsub!(/[MDCLXVI]/, 'M' => ' 1000', 'D' => ' 500', 'C' => ' 100',
  			 'L' => ' 50', 'X' => ' 10', 'V' => ' 5', 'I' =>' 1')

  roman.split(' ').map(&:to_i).inject{|sum,x| sum + x}

end




def geekify(string)
  string.gsub(/[lto]/, 'l' => '1', 't' => '7', 'o' => '0')
end

puts geekify('leet')


def doctorize(string)
  string.gsub(/Mr/, 'Mr' => 'Dr')
end

puts doctorize('Mr Smith')

puts 'MMMMMCDM'.count('M')


