class Integer
  def factorial
    factorial = (1..self).inject(:*)
  end

  def to_roman
    r_numerals = {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50,
    											'X' => 10, 'V' => 5, 'I' => 1}
    roman = ''
    num = self
    r_numerals.each do |k, v|
      (num / v).times do
        roman += k
        num = num - v
      end
    end
    roman
  end
end

#puts 73.factorial
#puts 1004.to_roman
