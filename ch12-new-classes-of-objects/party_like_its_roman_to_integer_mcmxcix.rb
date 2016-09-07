def roman_to_integer roman
  roman.downcase!
  numString = 0
  onesPlace = ["","i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix"]
  tensPlace = ["", "x", "xx", "xxx", "xl", "l", "lx", "lxx", "lxxx", "xc"]
  hundredsPlace = ["", "c", "cc", "ccc", "cd", "d", "dc", "dcc", "dccc", "cm"]
  thousandsPlace = ["", "m", "mm", "mmm"]

  onesPlace.each_with_index do |ones_numeral, ones_idx|
      tensPlace.each_with_index do |tens_numeral, tens_idx|
        hundredsPlace.each_with_index do |hund_numeral, hund_idx|
          thousandsPlace.each_with_index do |thous_numeral, thous_idx|
            number_joined = thous_numeral + hund_numeral + tens_numeral + ones_numeral
            if number_joined == roman
              numString = ((thous_idx * 1000) + (hund_idx * 100) + (tens_idx * 10) + ones_idx)
              break
            end
          end
        end
      end
    end
numString
end


=begin
PSEUDO-PSEUDOCODE
  onesPlace.each_with_index do |ones_numeral, ones_idx|
    if onesPlace.include?(roman)
      numString = (ones_idx) if ones_numeral == roman
    else
      tensPlace.each_with_index do |tens_numeral, tens_idx|
        ten_join_one = tens_numeral + ones_numeral
        numString = ((tens_idx * 10) + ones_idx) if ten_join_one == roman
      end
    else

    end
  end
=end




=begin
m cm xc ix


tensPlace = ['X', 'XX', 'XXX','XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
hundredsPlace = ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
thousandsPlace = ["M", "MM", "MMM"]


iterate through each ones
- if it is only one, that is fine
otherwise need to iterate through each tensplace + each onesplace, comparing to roman
- if matches, return

=end
