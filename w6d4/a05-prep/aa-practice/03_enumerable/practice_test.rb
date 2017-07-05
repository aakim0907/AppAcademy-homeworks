class Array

  # Monkey patch the Array class and add a my_inject method. If my_inject receives
  # no argument, then use the first element of the array as the default accumulator.

  def my_inject(accumulator = nil, &blk)
    idx = 0
    unless accumulator
      accumulator = self.first
      idx = 1
    end

    while idx < length
      accumulator = blk.call(accumulator, self[idx])
      idx += 1
    end

    accumulator
  end
end

class Hash

  # Write a version of my each that calls a proc on each key, value pair
  def my_each(&prc)
    key_arr = keys
    key_arr.length.times do |i|
      cur_key = key_arr[i]
      prc.call(cur_key, self[cur_key])
    end
    self
  end

end

class Array

  def my_each(&prc)
    length.times do |i|
      prc.call(self[i])
    end
    self
  end

  def my_each_with_index(&prc)
    length.times do |i|
      prc.call(self[i], i)
    end
    self
  end

  def my_select(&prc)
    selected = []
    my_each { |el| selected << el if prc.call(el) }
    selected
  end

  def my_reject(&prc)
    rejected = []
    my_each { |el| rejected << el unless prc.call(el) }
    rejected
  end

  def my_all?(&prc)
    my_each { |el| return false unless prc.call(el) }
    true
  end

  def my_any?(&prc)
    my_each { |el| return true if prc.call(el) }
    false
  end

  def my_zip(*arrs)
    zipped = []
    length.times do |i|
      zipped << [self[i]]
      arrs.each { |arr| zipped[i] << arr[i] }
    end
    zipped
  end

end

# Write a method that doubles each element in an array
def doubler(array)
  array.map { |el| el * 2 }
end
