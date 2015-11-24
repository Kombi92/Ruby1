
require 'benchmark'
require_relative '../lib/bSort.rb'
require_relative '../lib/qSort.rb'

array1 = (1..10).map { rand }
array2 = (1..100).map { rand }
array3 = (1..1000).map { rand }
array4 = (1..5000).map { rand }
array5 = (1..100000).map { rand }

puts "\n\n ###############################Benchmark############################### \n\n"

Benchmark.bmbm do |x|
  x.report('Bubble Sort, n = 10') { bubble_sort(array1) }
  x.report('Bubble Sort, n = 100') { bubble_sort(array2) }
  x.report('Bubble Sort, n = 1000') { bubble_sort(array3) }
  x.report('Bubble Sort, n = 5000') { bubble_sort(array4) }
  x.report('Quick  Sort, n = 5000') { quick_sort(array4) }
  x.report('Quick  Sort, n = 100000') { quick_sort(array5) }
  x.report('Ruby   Sort, n = 100000') { array5.sort! }
end

puts "\n"