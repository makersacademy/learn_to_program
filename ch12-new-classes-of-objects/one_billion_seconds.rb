def one_billion_second
    birthday = Time.gm(1976, 8, 3, 13, 31)
    billionth_second_old = birthday + 10**9
    billionth_second_old
end
puts one_billion_second
