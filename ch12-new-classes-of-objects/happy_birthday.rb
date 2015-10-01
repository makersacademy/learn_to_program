age_in_seconds = Time.new - Time.local(1967, 2, 10)

age_in_days = age_in_seconds / 86400

age_in_years = age_in_days / 365

puts age_in_years.to_i