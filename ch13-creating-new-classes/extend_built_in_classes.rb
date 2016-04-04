class Integer

attr_accessor'number'

  def factorial
    if self < 0
      puts "You can't take the factorial of a negative number."
    end
    if self <= 1
      1
    else
      product = 1
      self.downto(2) do |x|
        product *=  x
      end
      product
    end

  end

  def to_roman
    array = []
    (self / 1000).times{|x| array << "M"}
    (self % 1000 / 500).times{|x| array << "D"}
    (self % 500 / 100).times{|x| array << "C"}
    (self % 100 / 50).times{|x| array << "L"}
    (self % 50 / 10).times{|x| array << "X"}
    (self % 10 / 5).times{|x| array << "V"}
    (self % 5 / 1).times{|x| array << "I"}
    array.join
  end
end
