def roman_to_integer roman
  letter = {1000=>'M', 900=>'CM', 500=>'D', 400=>'CD', 100=>'C', 90=>'XC', 50=>'L', 40=>'XL', 10=>'X', 9=>'IX', 5=>'V', 4=>'IV', 1=>'I'}
  i, integer, array = 0, 0, []
  while i <= roman.length - 1
    letter.each do |val, char|
      if roman[i] == char
        integer = integer + val
        array.push val
        if array[i] > array[i-1]
          integer = integer - array[i-1] * 2
        end
      end
    end
    i = i + 1
  end
  integer
end

input = gets.chomp.upcase
puts roman_to_integer input
