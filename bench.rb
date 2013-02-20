require './tyler.rb'
require './christian.rb'
require 'benchmark'

n = 1_000_000
Benchmark.bm do |x|
  x.report("c_khanify x1mil:") { n.times do c_khanify("khan") end }
  x.report("t_khanify x1mil:") { n.times do t_khanify("khan") end }
end

n = 2_500_000
Benchmark.bm do |x|
  x.report("c_khanify x2.5mil:") { n.times do c_khanify("khan") end }
  x.report("t_khanify x2.5mil:") { n.times do t_khanify("khan") end }
end

n = 5_000_000
Benchmark.bm do |x|
  x.report("c_khanify x5mil:") { n.times do c_khanify("khan") end }
  x.report("t_khanify x5mil:") { n.times do t_khanify("khan") end }
end
