require 'benchmark'
require_relative 'merge'
require_relative 'monkey_patch'
require_relative 'iterative_merge'

Benchmark.bm(5) do |x|
  array = (1..1_000_000).to_a
  x.report('merge best       :') { merge_sort(array) }

  x.report('built-in best    :') { array.sort }

  x.report('monkey best      :') { array.sort_merge }

  x.report('interative best  :') { iterative_merge_combine(array) }

  x.report('merge worst      :') { merge_sort(array.reverse) }

  x.report('built-in worst   :') { array.reverse.sort }

  x.report('monkey worst     :') { array.reverse.sort_merge }

  x.report('interative worst :') { iterative_merge_combine(array.reverse) }

  x.report('merge random     :') { merge_sort(array.shuffle) }

  x.report('built-in random  :') { array.shuffle.sort }

  x.report('monkey random    :') { array.shuffle.sort_merge }

  x.report('interative random:') { iterative_merge_combine(array.shuffle) }
end
