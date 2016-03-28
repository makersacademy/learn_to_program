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
def roman_numeral(number)
    return "" if number <= 0 or number > 3999
    result = ""
    ROMANS.each do |k,v|
        x = number / k
        if x > 0
            x.times do
                result += ROMANS[k]
                number -= k
            end
        end
    end
    result
end