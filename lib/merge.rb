# recursive strategy modified from rosettacode
def merge_sort(array)
  return array if array.length <= 1
  midway  = (array.length / 2)
  left    = merge_sort(array[0...midway])
  right   = merge_sort(array[midway..-1])
  merge(left, right)
end

def merge(left, right)
  combination = []
  return left + right if left.last <= right.first
  until left.empty? || right.empty?
    combination << (left[0] <= right[0] ? left.shift : right.shift)
  end
  combination.concat(left).concat(right)
end
