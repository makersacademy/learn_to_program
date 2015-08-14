#!/usr/bin/env ruby

#Hours in a year

days_in_year=365.0
hours_in_day=24.0
minutes_in_hour = 60.0
years_in_decade = 10.0
seconds_in_minute = 60.0
hours_in_year = days_in_year*hours_in_day
puts hours_in_year

minutes_in_decade = hours_in_year*minutes_in_hour*years_in_decade
puts minutes_in_decade

my_age_years=28
my_age_hours = hours_in_year*my_age_years
my_age_seconds = minutes_in_hour*seconds_in_minute*my_age_hours
puts my_age_seconds

seconds_old = 1160000000.0
minutes_old = seconds_old/seconds_in_minute
hours_old = minutes_old/minutes_in_hour
years_old = hours_old/hours_in_year
puts years_old
