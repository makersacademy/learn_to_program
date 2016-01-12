def roman_to_integer roman
  values = {'I' => 1,
            'V' => 5,
            'X' => 10,
            'L' => 50,
            'C' => 100,
            'D' => 500,
            'M' => 1000
            }

  p array = roman.upcase.split('').to_a
  newarr = []
  result = 0

  array.each_with_index do |letter, i|

      if array[i+1] == nil
        result += values[letter]
      elsif values[array[i+1]] > values[letter]
        result -= values[letter]
      else
        result += values[letter]
      end

  end
  p result
end

roman_to_integer 'ii'
# roman numerals always go biggest number to smallest
# so if the numeral before the numeral's value is smaller
# means you need to subtract the number
# if numeral before value is bigger you add it on

# I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000
