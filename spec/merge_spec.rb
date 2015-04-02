require 'spec_helper'
require 'merge'

describe "merge sort method" do
  array = (1..10).to_a
  it 'sorts a reversed array' do
    merge_sort(array.reverse).must_equal [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  it 'sorts an already sorted array' do
    array = (1..10).to_a
    merge_sort(array).must_equal array
  end

  it 'sorts a random array' do
    merge_sort(array.shuffle).must_equal array
  end

  it 'sorts a large array' do
    array_new = (1..10_000).to_a
    merge_sort(array_new.shuffle).must_equal array_new
  end
end
