arr = [-1023, 1, -2]

def odd_or_even val
  result = val.sum

  if result.even?
    puts "even"
  else
    puts "odd"
  end


  return result

end

odd_or_even arr