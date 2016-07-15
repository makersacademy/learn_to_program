class Integer
  def factorial
    result = 1
    self.times do |i|
      result *= i + 1
    end
    result
  end

  def to_roman
    num = self

    m_length = 0
    d_length = 0
    c_length = 0
    l_length = 0
    x_length = 0
    v_length = 0
    i_length = 0

    if num >= 1000
      m_length = num / 1000
      num = num % 1000
    end

    if num >= 500
      d_length = num / 500
      num = num % 500
    end

    if num >= 100
      c_length = num / 100
      num = num % 100
    end

    if num >= 50
      l_length = num / 50
      num = num % 50
    end

    if num >= 10
      x_length = num / 10
      num = num % 10
    end

    if num >= 5
      v_length = num / 5
      num = num % 5
    end

    if num < 5
      i_length = num / 1
    end

    return 'M' * m_length + 'D' * d_length + 'C' * c_length + 'L' * l_length + 'X' * x_length + 'V' * v_length + 'I' * i_length
  end
end
