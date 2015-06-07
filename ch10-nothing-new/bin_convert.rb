def bin_convertor

  def ask_for_binary
    puts "Enter a binary number to convert to decimal:"
    bin = gets.chomp

    bin.each_char do |x|
      if x != '1' &&  x != '0'
        puts "not a binary number, please try again:"
        return nil
      end
    end
    bin
  end
  bin = ask_for_binary until bin != nil
  length = bin.length
  answer = 0
  i= 1
  bin.reverse.each_char do |x|
    temp = x.to_i * i
    answer = answer + temp
    i = i*2
  end
  puts answer
end

bin_convertor
