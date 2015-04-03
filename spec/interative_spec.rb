require 'spec_helper'
require 'iterative_merge'

describe "iterative sort method" do
  array = (1..10).to_a
  it 'sorts a reversed array' do
    iterative_merge_combine(array.reverse).must_equal [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  it 'sorts an already sorted array' do
    iterative_merge_combine(array).must_equal array
  end

  it 'sorts a random array' do
    iterative_merge_combine(array.shuffle).must_equal array
  end

  it 'sorts a large array' do
    array_new = (1..10_000).to_a
    iterative_merge_combine(array_new.shuffle).must_equal array_new
  end
end
