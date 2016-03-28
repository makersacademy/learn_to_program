ROMANS = {
    1000    => 'M',
    500     => 'D',
    100     => 'C',
    50      => 'L',
    10      => 'X',
    5       => 'V',
    1       => 'I'
}
def old_roman_numeral(number)
    return "" if number <= 0 or number > 3000
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