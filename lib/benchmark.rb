require 'benchmark'
require_relative 'merge'

Benchmark.bm(3) do |x|
  array = (1..1_000_000).to_a
  x.report("merge best     :") { merge_sort(array) }

  x.report("built-in best  :") { array.sort }

  x.report("merge worst    :") { merge_sort(array.reverse) }

  x.report("built-in worst :") { array.reverse.sort }

  x.report("merge random   :") { merge_sort(array.shuffle) }

  x.report("built-in random:") { array.shuffle.sort }
end
