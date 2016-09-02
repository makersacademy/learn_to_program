def old_roman_numeral (num)

  if num <= 0
    return "Please enter a positive number."

  elsif num < 5
    return "I" * num

  elsif num == 5
    return "V"

  elsif num < 10
    v_division = 10 / num
    remainder = (v_division * 5)
    return ("V" * v_division) + ("I" * (num - remainder))
    
  elsif num < 50
    x_division = num / 10
    v_division = (num - (x_division * 10)) / 5
    remainder = num - ((x_division * 10) + (v_division * 5))
    return ("X" * x_division) + ("V" * v_division) + ("I" * remainder)

  elsif num < 100
    l_division = num / 50
    x_division = (num - (l_division * 50)) / 10
    v_division = (num - ((l_division * 50) + (x_division * 10))) / 5
    remainder = num - ((l_division * 50) + (x_division * 10) + (v_division * 5))
    return ("L" * l_division) + ("X" * x_division) + ("V" * v_division) + ("I" * remainder)

  elsif num < 500
    c_division = num / 100
    l_division = (num - (c_division * 100)) / 50
    x_division = (num - ((l_division * 50) + (c_division * 100))) / 10
    v_division = (num - ((l_division * 50) + (x_division * 10) + (c_division * 100))) / 5
    remainder = num - ((c_division * 100) + (l_division * 50) + (x_division * 10) + (v_division * 5))
    return ("C" * c_division) + ("L" * l_division) + ("X" * x_division) + ("V" * v_division) + ("I" * remainder)

  elsif num < 1000
    d_division = num / 500
    c_division = (num - (d_division * 500)) / 100
    l_division = (num - ((c_division * 100) + (d_division * 500))) / 50
    x_division = (num - ((l_division * 50) + (c_division * 100) + (d_division * 500))) / 10
    v_division = (num - ((l_division * 50) + (x_division * 10) + (c_division * 100) + (d_division * 500))) / 5
    remainder = num - ((d_division * 500) + (c_division * 100) + (l_division * 50) + (x_division * 10) + (v_division * 5))
    return ("D" * d_division) + ("C" * c_division) + ("L" * l_division) + ("X" * x_division) + ("V" * v_division) + ("I" * remainder)

  elsif num < 3000
    m_division = num / 1000
    d_division = (num - (m_division * 1000)) / 500
    c_division = (num - ((d_division * 500) + (m_division * 1000))) / 100
    l_division = (num - ((c_division * 100) + (d_division * 500) + (m_division * 1000))) / 50
    x_division = (num - ((l_division * 50) + (c_division * 100) + (d_division * 500) + (m_division * 1000))) / 10
    v_division = (num - ((l_division * 50) + (x_division * 10) + (c_division * 100) + (d_division * 500) + (m_division * 1000))) / 5
    remainder = num - ((d_division * 500) + (c_division * 100) + (l_division * 50) + (x_division * 10) + (v_division * 5) + (m_division * 1000))
    return ("M" * m_division) + ("D" * d_division) + ("C" * c_division) + ("L" * l_division) + ("X" * x_division) + ("V" * v_division) + ("I" * remainder)

  end

  end
