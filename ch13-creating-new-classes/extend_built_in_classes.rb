# require './ch09-writing-your-own-methods/old_school_roman_numerals'    
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

class Integer
    # calculates factorial
    def factorial
        (1..self).reduce(1,:*)
    end
    
    # converts to old school roman numerals
    def to_roman
        old_roman_numeral(self)
    end
end