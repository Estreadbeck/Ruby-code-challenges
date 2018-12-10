require 'prime'
require 'benchmark'

# def prime_factors_sum num
#   (num.prime_division).map {|n|n[0] * n[1]}.sum
# end

# def divisors_sum num
#   (1..num).select { |n|num % n == 0}.sum
# end

def e_ds_mult_of_pfs(minNum, maxNum)
  minNum.upto(maxNum).to_a.each_with_object([]) {|item, obj| 1.upto(item).select { |i|item % i == 0}.sum % Prime.prime_division(item).each {|i|i[1].times {  == 0}
end


def j_ds_mult_of_pfs(low, high)
  answer = low.upto(high).to_a.each_with_object([]) do |item, obj|
    primes, divisors = 0, 0
    Prime.prime_division(item).each do | prime |
      prime[1].times { primes += prime[0]}
    end
    1.upto(Math.sqrt(item)).to_a.each do | divisor |
      if item % divisor == 0
        divisors += (item/divisor)
        divisors += divisor
      end
    end
    obj << item if divisors % primes == 0
  end
  answer
end

# j_ds_mult_of_pfs(10979, 14587)


n = 5
Benchmark.bm do |x|
   x.report('Ethan') { n.times do ; e_ds_mult_of_pfs(10979, 14587); end }
   x.report('Justin') { n.times do ; j_ds_mult_of_pfs(10979, 14587); end }
end