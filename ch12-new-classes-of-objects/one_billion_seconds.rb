def billborn(bdate)
  billborn = bdate + 1000000000  # => 2008-12-18 16:02:00 +0000
end                              # => :billborn

billborn(Time.local(1977, 4, 11, 15, 15, 20))  # => 2008-12-18 16:02:00 +0000
