def roman_numeral num
  i_length = 0
  iv_length = 0
  v_length = 0
  ix_length = 0
  x_length = 0
  xl_length = 0
  l_length = 0
  xc_length = 0
  c_length = 0
  cd_length = 0
  d_length = 0
  cm_length = 0
  m_length = 0

  if num >= 1000
    m_length = num / 1000
    num = num % 1000
  end

  if num >= 900
    cm_length = num / 900
    num = num % 900
  end

  if num >= 500
    d_length = num / 500
    num = num % 500
  end

  if num >= 400
    cd_length = num / 400
    num = num % 400
  end

  if num >= 100
    c_length = num / 100
    num = num % 100
  end

  if num >= 90
    xc_length = num / 90
    num = num % 90
  end

  if num >= 50
    l_length = num / 50
    num = num % 50
  end

  if num >= 40
    xl_length = num / 40
    num = num % 40
  end

  if num >= 1000
    m_length = num / 1000
    num = num % 1000
  end

  if num >= 10
    x_length = num / 10
    num =  num % 10
  end

  if num >= 9
    ix_length = num / 9
    num = num % 9
  end

  if num >= 5
    v_length = num / 5
    num = num % 5
  end

  if num >= 4
    iv_length = num / 4
    num = num % 4
  end

  if num >= 1
    i_length = num / 1
    num = num % 1
  end

puts 'M'*m_length + 'CM'*cm_length + 'D'*d_length + 'CD'*cd_length +
'C'*c_length + 'XC'*xc_length + 'L'*l_length + 'XL'*xl_length +
'X'*x_length + 'IX'*ix_length + 'V'*v_length + 'IV'*iv_length + 'I'*i_length

end

roman_numeral 4
roman_numeral 50
roman_numeral 49
roman_numeral 1000
roman_numeral 999
roman_numeral 990
roman_numeral 90
roman_numeral 400
roman_numeral 568
