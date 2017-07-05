# primes(num) returns an array of the first "num" primes.
# You may wish to use an is_prime? helper method.

def is_prime?(num)
  (2...num).none? { |n| (num % n).zero? }
end

def primes(num)
  prime_arr = []
  number = 2
  until prime_arr.length >= num
    prime_arr << number if is_prime?(number)
    number += 1
  end
  prime_arr
end

class Array

  # Write an Array#dups method that will return a hash containing the indices of all
  # duplicate elements. The keys are the duplicate elements; the values are
  # arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
    duplicates = Hash.new { |h,k| h[k] = [] }
    each_with_index do |num, idx|
      duplicates[num] << idx if count(num) > 1
    end
    duplicates
  end
end

class Hash

  # Write a version of merge. This should NOT modify the original hash
  def my_merge(hash2)
    merged = dup
    hash2.each { |k, v| merged[k] = v }
    merged
  end

end

class Array

  # Takes a multi-dimentional array and returns a single array of all the elements
  # [1,[2,3], [4,[5]]].my_controlled_flatten(1) => [1,2,3,4,5]
  def my_flatten
    flattened = []
    each do |el|
      if el.is_a?(Array)
        flattened += el.my_flatten
      else
        flattened << el
      end
    end
    flattened
  end

  # Write a version of flatten that only flattens n levels of an array.
  # E.g. If you have an array with 3 levels of nested arrays, and run
  # my_flatten(1), you should return an array with 2 levels of nested
  # arrays
  #
  # [1,[2,3], [4,[5]]].my_controlled_flatten(1) => [1,2,3,4,[5]]
  def my_controlled_flatten(n)
    return self if n < 1
    flattened = []
    each do |el|
      if el.is_a?(Array)
        flattened += el.my_controlled_flatten(n-1)
      else
        flattened << el
      end
    end
    flattened
  end
end

# Write a method that returns the median of elements in an array
# If the length is even, return the average of the middle two elements
class Array
  def median
    return nil if empty?
    sorted = self.sort
    mid_idx = length / 2
    if length.even?
      return sorted[mid_idx-1..mid_idx].reduce(:+).fdiv(2)
    else
      return sorted[mid_idx]
    end
  end
end

class Array

  # Write a monkey patch of binary search:
  # E.g. [1, 2, 3, 4, 5, 7].my_bsearch(5) => 4
  def my_bsearch(target)
    return nil if empty?
    mid_idx = length / 2
    mid_val = self[mid_idx]

    return mid_idx if mid_val == target

    if target < mid_val
      self[0...mid_idx].my_bsearch(target)
    else
      temp = self[mid_idx+1..-1].my_bsearch(target)
      temp ? temp + mid_idx + 1 : temp
    end
  end

end

class Array

  def my_rotate(num = 1)
    rotated = dup
    rotations = num % length
    rotations.times { rotated << rotated.shift }
    rotated
  end

end

class Array

  def my_reverse
    reversed = []
    each { |el| reversed.unshift(el) }
    reversed
  end

end

class Array
  # Write a method, `Array#two_sum`, that finds all pairs of positions where the
  # elements at those positions sum to zero.

  # NB: ordering matters. I want each of the pairs to be sorted smaller index
  # before bigger index. I want the array of pairs to be sorted
  # "dictionary-wise":
  #   [0, 2] before [1, 2] (smaller first elements come first)
  #   [0, 1] before [0, 2] (then smaller second elements come first)

  def two_sum
    sums = []
    each_index do |idx|
      ((idx + 1)...length).each do |idx2|
        sums << [idx, idx2] if (self[idx] + self[idx2]).zero?
      end
    end
    sums
  end
end

# Write a method that returns the factors of a number in ascending order.

def factors(num)
  (1..num).select { |el| (num % el).zero? }
end

class Array

  def my_join(str = "")
    joined = ""
    each_with_index do |el, idx|
      joined += el
      joined += str unless idx == length - 1
    end
    joined
  end

end
