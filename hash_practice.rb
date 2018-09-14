grid = Hash.new
3.times do |box|
  grid["a#{box += 1}"] => " "
end

puts grid