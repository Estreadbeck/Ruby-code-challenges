def dig_pow(n, p)
  sum = 0
  p_og = p
  n.digits.reverse.map do |i| 
    pow = i**p
    sum += pow
    p += 1
  end
  if (sum % n == 0)
    return sum / n
  else
    return -1
  end
end
dig_pow(695, 2)