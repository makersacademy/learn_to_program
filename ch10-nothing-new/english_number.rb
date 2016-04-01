def english_number n
  ans = ''
  if n == 0
    'zero'
  else
    english_number_recur n, ans
  end
end

def english_number_recur n, ans
  if n == 0
    return
  else
    order = 1000 ** ((n.to_s.length - 1)/3)
    ans << thou_section(n, order)
    english_number_recur((n - n/order*order), ans)
  end
  ans.rstrip
end

def hun_section n
  ans = ''
  ones    = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  tens    = %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)
  if n < 20
    ans << (n == 0 ? "" : ones[n])
  elsif n < 100
    ans << (n % 10 == 0 ? tens[n/10] : "#{tens[n/10]}-#{ones[n%10]}")
  else
    ans << "#{ones[n/100]} hundred " + hun_section(n - n/100*100)
  end
end

def thou_section n, order
  thous   = {0 => '',
      1000 => 'thousand',
      1000000 => 'million',
      1000000000 => 'billion',
      1000000000000 => 'trillion',
      1000000000000000 => 'quadrillion',
      1000000000000000000 => 'quintillion',
      1000000000000000000000 => 'sextillion',
      1000000000000000000000000 => 'septillion',
      1000000000000000000000000000 => 'octillion',
      1000000000000000000000000000000 => 'nonillion',
      1000000000000000000000000000000000 => 'decillion',
      1000000000000000000000000000000000000 => 'undecillion',
      1000000000000000000000000000000000000000 => 'duodecillion',
      1000000000000000000000000000000000000000000 => 'tredecillion',
      1000000000000000000000000000000000000000000000 => 'quattuordecillion',
      1000000000000000000000000000000000000000000000000 => 'quindecillion'
    }
  "#{hun_section(n/order)} #{thous[order]} "
end
