def one_billion_seconds(year, month, day, hour, minute, second)
  dob = Time.local(year, month, day, hour, minute, second)

  current_age_in_seconds = (Time.new - dob).to_i

  if current_age_in_seconds >= 1000000000
    return "You are already over one billion seconds old!!! In fact, you are #{current_age_in_seconds} seconds old!"
  end

    seconds_left = 1000000000 - current_age_in_seconds
    one_billionth_second = Time.new + seconds_left

    return "You are #{current_age_in_seconds} seconds old! You will turn one billion seconds old at #{one_billionth_second}"

end
