#!/usr/bin/env ruby
my_birth_time = Time.local(1990, 7, 29, 8, 20)
my_age_in_seconds = Time.new - my_birth_time
puts my_age_in_seconds
when_Ill_be_billion_second_old = my_birth_time + (1_000_000_000)
puts when_Ill_be_billion_second_old
