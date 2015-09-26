# Party like it's roman_to_integer 'mcmxcix'! Come on, you knew it was
# coming, didn't you? It's the other half of your roman_numeral 1999
# method. Make sure to reject strings that aren't valid Roman numerals.
#
# NOTE: strings that aren't valid numerals means strings that contain
# non-roman characters. The right order of the roman numerals is pre-
# supposed.

NUMERALS = {
  M: 1_000,   CM: 900,  D: 500,   CD: 400,
  C: 100,     XC: 90,   L: 50,    XL: 40,
  X: 10,      IX: 9,    V: 5,     IV: 4,
  I: 1
}

def valid_numeral?(roman)
  roman.chars.each { |char| return false unless NUMERALS.key?(char.to_sym) }
  true
end

def roman_to_integer(roman)
  roman.upcase!

  if valid_numeral?(roman)
    return 0 if roman == ''
    NUMERALS.each { |r, val| return val + roman_to_integer(roman[r.length..-1]) if (/#{r.to_s}/ =~ roman) == 0 }
  else
    return "#{roman} is not a valid Roman numeral."
  end
end
