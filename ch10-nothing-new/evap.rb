def evaporator(content, evap_per_day, threshold)
  day = 0
  percent = 100.00
  while percent >= threshold
  percent = percent - ((evap_per_day.to_f/100)*percent)
  p percent
  day += 1
  end
  day
end

evaporator 10,10,10