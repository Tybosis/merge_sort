# iterative merge
def iterative_merge_combine(array)
  slice_size = 1
  while slice_size <= array.length - 1
    array = merging(array, slice_size)
    slice_size *= 2
  end
  array
end

def merging(start_array, slice)
  start_array = start_array.each_slice(slice).to_a
  i = 0
  finish_merged = []
  while i <= start_array.length - 1
    temporary = []
    leftover = start_array.pop if start_array.length.odd?
    until start_array[i].empty? || start_array[i + 1].empty?
      temporary << (start_array[i][0] <= start_array[i + 1][0] ? start_array[i].shift : start_array[i + 1].shift)
    end
    temporary << start_array[i] unless start_array[i].empty?
    temporary << start_array[i + 1] unless start_array[i + 1].empty?
    finish_merged << temporary
    i += 2
  end
  finish_merged << leftover if leftover
  finish_merged.flatten!
end
