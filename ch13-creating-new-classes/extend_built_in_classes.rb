class Integer
  def to_roman
    num = self
    ref = [['M',1000],['D',500],['C',100],['L',50],['X',10],['V',5],['I',1]]
    result = ''
    ref.each do |ary|
      result << (ary[0]) * (num / ary[1])
      num = num % ary[1]
    end
    result
  end

  def factorial
    (1..self).reduce(1, :*)

  end
end

class Array
  def shuffle
    prng = Random.new
    recursive_shuffle(self, [], prng)
  end

  private
  def recursive_shuffle arr, shuffled, prng
    num = arr.length
    pos = prng.rand(num)

    shuffled << arr[pos]
    arr.delete_at(pos)

    arr == [] ? shuffled : recursive_shuffle(arr, shuffled, prng)
  end
end

p  [1,4,2,8,5,7].shuffle

p 2435.to_roman

p 10.factorial

