def happy_birhtday year, month, day
  born = Time.local(year, month, day).to_s.split('-')[0].to_i
  now = Time.new.to_s.split('-')[0].to_i
  born_days = Time.local(year, month, day).to_s.split('-')[1].to_i + Time.local(year, month, day).to_s.split('-')[1][1..2].to_i
  now_days = Time.new.to_s.split('-')[1].to_i + Time.new.to_s.split('-')[1][1..2].to_i
  born_days > now_days ? age = now - born - 1 : age = now - born
  age.times {puts "SPANK!"}
end