require 'spec_helper'
require 'merge'

describe "merge sort method" do
  it 'sorts a reversed array' do
    array = (1..5).to_a.reverse!
    Sorting.merge_sort(array).must_equal [1, 2, 3, 4, 5]
  end
end
