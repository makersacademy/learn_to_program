
#born 11am 17/07/1988
#86400 seconds in a day
#leap years = 1988, 1992, 1996, 2000, 2004, 2008, 2012, (2016, 2020)

seconds_in_365_days = 86400 * 365
seconds_in_366_days = 86400 * 366
day_born = (86400 / 24) * 13
year_born = day_born + (86400 * 14) + ((86400 * 31) * 3) + ((86400 * 30) * 2)
this_year_so_far = ((86400 * 31) * 3) + (86400 * 28)

age_in_seconds = 21 * seconds_in_365_days + 6 * seconds_in_366_days + year_born + this_year_so_far

billion = 1000000000
puts birthday = Time.local(1988, 7, 17, 11)

return birthday + (billion)
