class Integer
    def to_roman
        if self == 4
            roman = "IV"
        else
            roman = "X"
        end
        roman
    end
end

puts 4.to_roman
puts 5.to_roman