class Array
    def shuffle
        arr = self
        shuf = []
        while arr.length > 0
            index = rand(arr.length)
            currentIndex = 0
            newArray = []
            
            arr.each do |item|
                if currentIndex == index
                    shuf.push item
                    else
                    newArray.push item
                end
                currentIndex += 1
            end
            arr = newArray
        end
        shuf
    end
end

class Integer
    def factorial
        if self == 1
            1
            else
            self * (self - 1).factorial
        end
    end
end

class Integer
    def romanToNumber
        roman = ''
        roman +='M' * (self / 1000)
        roman +='D' * (self % 1000 / 500)
        roman +='C' * (self % 500 / 100)
        roman +='L' * (self % 100 / 50)
        roman +='X' * (self % 50 / 10)
        roman +='V' * (self % 10 / 5)
        roman +='I' * (self % 5 / 1)
        
        roman
    end
end

puts [34,234,2,12,54].shuffle.join(' ')
puts  6.factorial
puts 3213.romanToNumber