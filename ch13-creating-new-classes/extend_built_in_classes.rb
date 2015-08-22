class Integer

  # Extending built-in class Integer
  def factorial

    # Return quickly for 1 and 0
    if self <= 1
      return 1
    end

    # Else, calculate factorial here
    factorial = 1

    for i in 1..self do
      # puts "i is #{i} and factorial is #{factorial}"
      factorial = factorial * i
    end

    factorial
  end

end

puts 3.factorial