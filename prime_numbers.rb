def isPrime(num)
  if num > 1
    if num === 2 || num === 3 || num === 5
      p true
    elsif (num.to_f % 2.0 > 0.0) and (num.to_f % 3.0 > 0.0) and (num.to_f % 5.0 > 0.0)
      p true
    else
      p false
    end
  else
    p false
  end
end



isPrime 958297