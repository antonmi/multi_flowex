def push(array, el)
  result = array.push(el)
  Tuple.new([:ok, result])
end
