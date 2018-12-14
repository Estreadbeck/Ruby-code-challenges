def solution(number)
  (1...number).to_a.keep_if {|x| x % 3 == 0 || x % 5 == 0}.sum
end


solution (200)