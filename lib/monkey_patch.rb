# Monkey patch onto Array class
class Array
  def sort_merge
    return self if self.length <= 1
    midway = self.length / 2
    left   = self[0...midway].sort_merge
    right  = self[midway..-1].sort_merge
    merging(left, right)
  end

  def merging(left, right)
    sorted = []
    return left + right if left.last <= right.first
    until left.empty? || right.empty?
      sorted << (left[0] <= right[0] ? left.shift : right.shift)
    end
    sorted + left + right
  end
end
