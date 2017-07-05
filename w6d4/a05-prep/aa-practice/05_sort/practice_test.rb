class Array

  #Write a monkey patch of quick sort that accepts a block
  def my_quick_sort(&prc)
    prc ||= proc { |x, y| x <=> y }
    return self if size < 2

    pivot = first

    left = self[1..-1].select { |el| prc.call(pivot, el) == 1 }
    right = self[1..-1].reject { |el| prc.call(pivot, el) == 1 }

    left.my_quick_sort(&prc) + [pivot] + right.my_quick_sort(&prc)
  end

end

class Array

  # Write an Array#merge_sort method; it should not modify the original array.

  def merge_sort(&prc)
    prc ||= proc { |x,y| x <=> y }
    return self if size < 2
    mid_idx = length / 2
    left = take(mid_idx)
    right = drop(mid_idx)
    left_sort = left.merge_sort(&prc)
    right_sort = right.merge_sort(&prc)
    Array.merge(left_sort, right_sort, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end
    merged + left + right
  end
end

# Jumble sort takes a string and an alphabet. It returns a copy of the string
# with the letters re-ordered according to their positions in the alphabet. If
# no alphabet is passed in, it defaults to normal alphabetical order (a-z).

# Example:
# jumble_sort("hello") => "ehllo"
# jumble_sort("hello", ['o', 'l', 'h', 'e']) => 'ollhe'

def jumble_sort(str, alphabet = nil)
  alphabet ||= ("a".."z").to_a
  sorted = false
  until sorted
    sorted = true
    (0..(str.length-2)).each do |idx|
      if alphabet.index(str[idx]) > alphabet.index(str[idx + 1])
        str[idx], str[idx+1] = str[idx+1], str[idx]
        sorted = false
      end
    end
  end
  str
end

class Array
  def bubble_sort!
    return self if length < 2
    sorted = false
    until sorted
      sorted = true
      (0..(length - 2)).each do |idx|
        if self[idx] > self[idx + 1]
          self[idx], self[idx + 1] = self[idx + 1], self[idx]
          sorted = false
        end
      end
      self
    end
  end

  def bubble_sort!(&prc)
    prc ||= proc { |x, y| x <=> y }
    return self if length < 2
    sorted = false
    until sorted
      sorted = true
      (0..(length - 2)).each do |idx|
        case prc.call(self[idx], self[idx + 1])
        when 1
          self[idx], self[idx + 1] = self[idx + 1], self[idx]
          sorted = false
        end
      end
    end
    self
  end

  def bubble_sort(&prc)
    self.dup.bubble_sort!(&prc)
  end
end
