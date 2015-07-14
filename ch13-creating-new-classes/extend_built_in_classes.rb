# starting condition
list = [ ]

# ask the question
puts 'Enter a list of words, press \'enter\' to quit and they will be returned randomly shuffled.'
word = 'one'

# get the words in the first list
while word != ''
word = gets.chomp
list.push word
end


# defining the array method

class Array

# defining to_shuffle
def to_shuffle

# starting conditions of local variables
randomized = [ ]
count = -2
x = 0
y = 0


self.each do |word|
count = count + 1
end

while y <= count

x = rand(count+1)

if self[x] != 'used'
randomized.push self[x]
self[x] = 'used'
y = y + 1
end

end

puts randomized

end

end

# shuffling and array

list.to_shuffle
