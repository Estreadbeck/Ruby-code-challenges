num = 12345



def digital_root myNum

  def num_splitter val
  arr = Array.new
  newVal = val.to_s
  arr = newVal.split(//).map{|chr| chr.to_i}
  arr_adder arr
  end

  def arr_adder myArr
    sumArr = myArr.sum
    if sumArr > 9
      num_splitter sumArr
    else
      result = sumArr

      p result
    end
  end

  num_splitter myNum
  
end


digital_root num