ROMANS = {
    1000    => 'M',
    900     => 'CM',
    500     => 'D',
    400     => 'CD',
    100     => 'C',
    90      => 'XC',
    50      => 'L',
    40      => 'XL',
    10      => 'X',
    9       => 'IX',
    5       => 'V',
    4       => 'IV',
    1       => 'I'
}

def roman_to_integer(roman_string)
    roman_string.upcase!
    result = 0
    ROMANS.values.each do |roman|
        while roman_string.start_with?(roman)
            puts result += ROMANS.invert[roman]
            roman_string = roman_string.slice(roman.length, roman_string.length)
        end
    end
    result
end