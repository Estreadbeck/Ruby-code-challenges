def likes(names)
  case names.count
  when 0
    p 'No one likes this'
  when 1
    p "#{names[0]} likes this"
  when 2
    p "#{names[0]} and #{names[1]} like this"
  when 3
    p "#{names[0]}, #{names[1]} and #{names[2]} like this"
  when -> (n) {n >= 4}
    split_arr = names.shift(2)
    p "#{split_arr[0]}, #{split_arr[1]} and #{names.count} others like this"
  end
end




likes([])
likes(["Peter"])
likes ["Jacob", "Alex"]
likes ["Max", "John", "Mark"]
likes ["Alex", "Jacob", "Mark", "Max"]
likes %W(Curbag Murag Hoknuk Lob Bugak Shobob Vretkag Shamar Oglub Vulug)