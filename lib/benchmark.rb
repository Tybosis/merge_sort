require 'benchmark'
require_relative 'merge'

Benchmark.bm(3) do |x|
  array = (1..10_000).to_a
  x.report("merge best     :") { Sorting.merge_sort(array) }

  x.report("built-in best  :") { Sorting.merge_sort(array) }

  x.report("merge worst    :") { Sorting.merge_sort(array.reverse) }

  x.report("built-in worst :") { Sorting.merge_sort(array.reverse) }

  x.report("merge random   :") { Sorting.merge_sort(array.shuffle) }

  x.report("built-in random:") { Sorting.merge_sort(array.shuffle) }
end
