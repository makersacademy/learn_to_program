=begin

Extend the built-in classes. How about making your shuffle method on page
75 an array method? Or how about making factorial an integer method?
4.to_roman , anyone? In each case, remember to use self to access the object
the method is being called on (the 4 in 4.to_roman ).

=end

class Integer
  # your code here
  def factorial
    return fact = 1 if self == 0
    self*(self-1).factorial
  end
end
