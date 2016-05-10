def roman_to_integer roman
  roman.upcase!
  maches = [
            ['M', 1000],
            ['CM', 900],
            ['D', 500],
            ['CD', 400],
            ['C', 100],
            ['XC', 90],
            ['L', 50],
            ['XL', 40],
            ['X', 10],
            ['IX', 9],
            ['V', 5],
            ['IV', 4],
            ['I', 1]
            ]
  n = 0
  maches.each do |str, int|
    while roman.sub!(/^#{str}/, "")
      n += int
    end
  end
  n
end