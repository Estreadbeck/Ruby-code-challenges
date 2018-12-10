def filter_list(l)
  result = Array.new
  l.map do |i| 
    if i.class == Integer
     result << i
    end
  end
  return result
end

filter_list([1,'a','b',0,15])