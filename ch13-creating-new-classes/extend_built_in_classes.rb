#shamlessly copied I'm afraid!

class Integer

def shuffle

arr = self

shuf = []

while arr.length > 0

rand_index = rand(arr.length)


curr_index = 0

new_arr = []

arr.each do |item|

if curr_index == rand_index

shuf.push item

else

new_arr.push item

end

curr_index = curr_index + 1

end


arr = new_arr

end

shuf

end

end

class Integer

def factorial

if self <= 1

1

else

self * (self-1).factorial

end

end

def to_roman

Prepared exclusively for Nikesh Ashar report erratum • discuss

# I chose old-school roman numerals just to save space.

roman = ''

roman = roman + 'M' * (self / 1000)

roman = roman + 'D' * (self % 1000 / 500)

roman = roman + 'C' * (self % 500 / 100)

roman = roman + 'L' * (self % 100 / 50)

roman = roman + 'X' * (self % 50 / 10)

roman = roman + 'V' * (self % 10 / 5)

roman = roman + 'I' * (self % 5 / 1)

roman

end

end
end