def factorial num
  if num < 0
      return "Watch out - you can't make a factorial of this!"
  end

  if num <= 1
    1
  else
    num * factorial(num - 1)
  end
end

puts(factorial(30))
