def sequence_sum(begin_num, end_num, step)
  val = 0
  if begin_num > end_num
    # return 0
    p 0
  else
    (begin_num..end_num).each do |n|
      val += n
    end
    p val
  end

end

sequence_sum(2, 6, 2)