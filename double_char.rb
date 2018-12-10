def double_char(str)
  bob = String.new
  str.each_char {|c| bob.concat("#{c}#{c}#{c}#{c}#{c}#{c}") }
  p bob
end

my_str = "Hash-slinging Slasher"

double_char my_str
