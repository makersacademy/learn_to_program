def age_in_seconds *pars
  ( Time.now - Time.new(*pars) ).to_i
end

def billionth_second_day *pars
  if ( age = age_in_seconds *pars ) > 10**9
    puts "your 1bln seconds day was #{age - 10**9} seconds ago, on #{Time.new(*pars) + 10**9}"
  else
    puts "your 1bln sec day will be in #{10**9 - age} seconds, on #{Time.new(*pars) + 10**9}"
  end
end

#date = [1987,8,1]
#billionth_second_day *date