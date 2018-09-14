def double_char(str)
  bob = String.new
  str.each_char {|c| bob.concat("#{c}#{c}") }
  return bob
end

my_str = "Praise Sigmar"

double_char my_str