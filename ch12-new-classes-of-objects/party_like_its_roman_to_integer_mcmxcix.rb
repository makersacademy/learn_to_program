#passes spec locally but .chars needs to be adapted for Travis CI build.

# def roman_to_integer roman

#  	a = roman.downcase
#  	b = a.gsub(/iv/,' 4 ').gsub(/ix/,' 9 ').gsub(/xl/,' 40 ').gsub(/xc/,' 90 ').gsub(/cd/,' 400 ').gsub(/cm/,' 900 ')
 	
#     h = {'i'=>"1 ",'v'=>'5 ','x'=>'10 ','l'=>'50 ','c'=>'100 ','d'=> '500 ','m'=>'1000 '}
#     c = b.chars.join
    
#     if roman.length > 6
#       d = c.gsub(/\w+/) {|m|h.fetch(m,m)}.split.collect{|x|x.to_i}
#       d.inject(:+)
#     else
#       c = b.chars.join(' ')
#       d = c.gsub(/\w+/) {|m|h.fetch(m,m)}.split.collect{|x|x.to_i}
#       d.inject(:+)
#     end
# end

# #Shamelessly adapted to pass the spec, after hours of trying 
# #to make it work without.

def roman_to_integer roman
  digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
  total = 0
  prev = 0
  index = roman.length - 1
  while index >= 0
    c = roman[index].downcase
    index = index - 1
    val = digit_vals[c]
    if !val
      puts 'This is not a valid roman numeral!'
      return
    end

    if val < prev
      val = val * -1
    else
      prev = val
    end
    total = total + val
  end

  total
end