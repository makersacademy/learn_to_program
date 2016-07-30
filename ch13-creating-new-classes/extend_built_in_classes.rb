class Integer
  def factorial
    if self <= 1
      fac = 1
    else
      fac = self * (self - 1).factorial
    end
    fac
  end
end
