def is_prime?(num)
  (2...num).none? { |factor| num % factor == 0 }
end

def primes(count)
  primes = []

  i = 2
  until primes.count >= count
    primes << i if is_prime?(i)

    i += 1
  end

  primes
end

class Array
  def dups
    positions = Hash.new { |h, k| h[k] = [] }

    each_with_index do |item, index|
      positions[item] << index
    end

    positions.select { |key, val| val.count > 1 }
  end
end

class Hash

  def my_merge(hash2)
    self_dup = dup

    hash2.each do |k, v|
      self_dup[k] = v
    end

    self_dup
  end

end

class Array

  def my_flatten
    flattened = []
    self.my_each do |el|
      el.is_a?(Array) ? flattened += el.my_flatten : flattened << el
    end
    flattened
  end

  def my_controlled_flatten(n)
    return self if n < 1
    result = []

    each do |el|
      if el.is_a?(Array)
        result += el.my_controlled_flatten(n-1)
      else
        result << el
      end
    end

    result
  end

end

def median
  return nil if empty?
  sorted = self.sort
  if length.odd?
    sorted[length / 2]
  else
    (sorted[length / 2] + sorted[length / 2 - 1]).fdiv(2)
  end
end

class Array

  def my_bsearch(target)
    return nil if size == 0
    mid = size/2

    case self[mid] <=> target
    when 0
      return mid
    when 1
      return self.dup.take(mid).my_bsearch(target)
    else
      search_res = self.dup.drop(mid+1).my_bsearch(target)
      search_res.nil? ? nil : mid + 1 + search_res
    end
  end

end

class Array

  def my_rotate(num=1)
    rotations = num % size
    rotated_arr = self.dup

    rotations.times do
      rotated_arr << rotated_arr.shift
    end

    rotated_arr
  end

end

class Array

  def my_reverse
    reversed = []
    my_each{|el| reversed.unshift(el)}
    reversed
  end

end


class Array
  def two_sum
    pairs = []
    (0...length).each do |i|
      ((i + 1)...length).each do |j|
        pairs << [i, j] if self[i] + self[j] == 0
      end
    end

    pairs
  end
end


def factors(num)
  (1..num).select { |i| (num % i) == 0 }
end

class Array

  def my_join(str = "")
    res = ""
    my_each_with_index do |el, i|
      res << el.to_s
      res << str unless i == size - 1
    end

    res
  end

end

