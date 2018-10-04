#O(n^2)
#Quadratic
def Quadratic(array)
  array.each_with_index do |el, i|
    array.each_with_index do |el2, idx|
      next if i == idx
      return true if el == el2
    end
  end
  false
end

#O(n log n)
# Split by n

def merge_sort(array)
  return array if array.length < 2
  mid = array.length / 2
  sleft = merge_sort(array.take(mid))
  sright = merge_sort(array.drop(mid))
  merge(left, right)
end

def merge(left, right)
  merged = []

  until left.empty? || right.empty?
    if left.first <= right.first
      merged << left.shift
    else
      merged << right.shift
    end
  end

  merged + left + right
end

#O(n)
# Linear

def include(arr, target)
  arr.each {|el| return true if el == target}
  false
end

# O(1)
#
def is_first(array)
  array[0] == "fish" ? true : false
end

#
#

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end
