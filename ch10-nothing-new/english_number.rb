def english_number(int)
  numbers_to_name = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
  str = ""
  numbers_to_name.each do |num, name|
    if int == 0
      return str
    elsif int.to_s.length == 1 && int/num > 0
      return str + "#{name}"      
    elsif int < 100 && int/num > 0
      return str + "#{name}" if int%num == 0
      return str + "#{name} " + english_number(int%num)
    elsif int/num > 0
      return str + english_number(int/num) + " #{name} " + english_number(int%num)
    end
  end
end



puts english_number(4) == "four"
puts english_number(27) == "twenty seven"
puts english_number(102) == "one hundred two"
puts english_number(38_079) == "thirty eight thousand seventy nine"
puts english_number(82102713) == "eighty two million one hundred two thousand seven hundred thirteen"

3.times do |x|
puts "Type in your number."
num = gets.chomp.to_i
puts english_number(num)
end