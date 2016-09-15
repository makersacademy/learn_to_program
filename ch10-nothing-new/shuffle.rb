meeshyep:~/workspace/Projects/learn_to_program/ch10-nothing-new (master) $ irb
2.3.0 :001 > def shuffle arr
2.3.0 :002?>   arr.sort_by{rand}
2.3.0 :003?>   end
 => :shuffle 
2.3.0 :004 > p(shuffle([1,2,3,4,5,6,7,8,9,0]))
[9, 0, 6, 8, 4, 3, 2, 1, 7, 5]
 => [9, 0, 6, 8, 4, 3, 2, 1, 7, 5] 