def shuffle arr
    arr.length > 1 ? [arr.slice!(rand(0..arr.length-1)) ] + shuffle(arr) : arr
end
