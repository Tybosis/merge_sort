require 'spec_helper'
require 'monkey_patch'

describe "merge sort method" do
  array = (1..10).to_a
  it 'sorts a reversed array' do
    array.reverse.sort_merge.must_equal [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  it 'sorts an already sorted array' do
    array.sort_merge.must_equal array
  end

  it 'sorts a random array' do
    array.shuffle.sort_merge.must_equal array
  end

  it 'sorts a large array' do
    array_new = (1..10_000).to_a
    array_new.shuffle.sort_merge.must_equal array_new
  end
end
