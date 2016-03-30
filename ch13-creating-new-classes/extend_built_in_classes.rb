require './ch09-writing-your-own-methods/old_school_roman_numerals'    

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