class Integer
    def factorial
        n = self
        return n.downto(1).inject(:*)
    end
    
    def to_roman
        num = self
        
        romanNumeral = ""
        
            romanNumeral << "M" * (num / 1000)
            romanNumeral << "D" * (num % 1000 / 500)
            romanNumeral << "C" * (num % 500 / 100)
            romanNumeral << "L" * (num % 100 / 50)
            romanNumeral << "X" * (num % 50 / 10)
            romanNumeral << "V" * (num % 10 / 5)
            romanNumeral << "I" * (num % 5)
    
    return romanNumeral
    
    end
end
