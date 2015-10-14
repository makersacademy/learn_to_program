=begin
class Array
  def my_shuffle
    length = self.length
    shuffles = length*100

    shuffles.times do
      index = 0
      while index < (length -1)
        n = self[index]
        nn = self[index+1]

        shuffle_it = rand(length) < (length/2)

        if shuffle_it
          self[index] = nn.to_i
          self[index+1] = n.to_i
        end
        index += 1
      end
    end
    self
  end
end

puts [1,2,3,4,5,6,7,8,9].my_shuffle
=end

class Integer

  def factorial
    if self <= 1
      return 1
    else
      return self * (self-1).factorial
    end
  end


  def to_roman
    remainder = self
    numerals = ""

    while remainder > 0 do
      case remainder
      when 1000..3000
        x = remainder / 1000
        1.upto(x) {|i| numerals = numerals + "M"}
        remainder %=1000
      when 500..999
        x = remainder / 500
        1.upto(x) {|i| numerals = numerals + "D"}
        remainder %= 500
      when 100..499
        x = remainder / 100
        1.upto(x) {|i| numerals = numerals + "C"}
        remainder %= 100
      when 50..99
        x = remainder / 50
        1.upto(x) {|i| numerals = numerals + "L"}
        remainder %= 50
      when 10..49
        x = remainder / 10
        1.upto(x) {|i| numerals = numerals + "X"}
        remainder %= 10
      when 5..9
        x = remainder / 5
        numerals = numerals + "V"
        remainder %= 5
      when 1..4
        1.upto(remainder) {|i| numerals = numerals + "I"}
        break
      else
        numerals = "An error has occured, I can't convert #{num}"
        break
      end
    end
    return numerals
  end
end

# puts 7.factorial
puts 7.to_roman
