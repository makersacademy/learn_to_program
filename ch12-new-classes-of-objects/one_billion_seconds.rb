def one_billion_seconds birth          # Worked it out the long way before
                                      # realising easy solution, both included.
  # calculate seconds in normal_year
  normal_year = (((365*24)*60)*60)   #=> 31536000

  # calculate seconds in a day
  day = ((24*60)*60) #=> 86400

  # calculate number of leap_year_days from birth_date - Time.new(current time)
  now   = Time.now      #=> 2016-02-21 14:24:16
  age = Time.now.year - (birth.year)
  leaps = [] #=> count of leap years

                                    # were you born after feb 29 on a leap year?
   born_after_leap  = (birth.year % 4 == 0) && (birth.month >= 3) ? true : false
   now_after_leap   =  (now.year % 4 == 0)  &&   (now.month >= 3) ? true : false
                                    # currently on a leap year and past feb 29?
  i = birth.year
  while i < now.year
    i%4 == 0 ? leaps << i : nil
    i+=1
  end

  born_after_leap  ? leaps.delete(leaps[0]) : leaps = leaps  # born after that year's leap day? remove it from leaps
  now_after_leap   ? leaps.push(now.year)   : leaps = leaps  # past this year's leap day? add it to leaps

  # calculate seconds in birth_year : normal_year - birth_date(to the second)
  nyr_to_birth = birth - (Time.local((birth.year), 1, 1))
  year_zero = normal_year - nyr_to_birth

  # calculate seconds in current year normal_year - Time.new
  nyr_to_now = Time.now - Time.local((now.year), 1, 1, 00,00)

  # result:
  p year_zero + nyr_to_now + ((age-1)*normal_year) +(leaps.count)*day
  # or simply (annoyingly):
  Time.now - birth
end

one_billion_seconds(Time.local(1986, 1, 13, 06))
