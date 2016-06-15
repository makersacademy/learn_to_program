def sort array

  sorted_array = []
  holding_array = []

  while array.length > 0
    var1 = array.pop
    if sorted_array.length > 0
      var2 = sorted_array.pop
    else
      var2 = array.pop
    end

    while var1 < var2
      if sorted_array.length > 0
        holding_array.push(var2)
        var2 = sorted_array.pop
      else
        sorted_array.push(var1)
        var1 = 0
        sorted_array.push(var2)
        var2 = 0
      end
    end

    if var1 !=0 and var2 !=0
      sorted_array.push(var2)
      sorted_array.push(var1)
    end

    holding_array.length.times do
      sorted_array.push(holding_array.pop)
    end

  end

return sorted_array

end
