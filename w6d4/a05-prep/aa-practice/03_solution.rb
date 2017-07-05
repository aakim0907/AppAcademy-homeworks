class Array
  def my_inject(accumulator = nil, &block)
    i = 0

    if accumulator.nil?
      accumulator = self.first
      i += 1
    end

    while i < length
      accumulator = block.call(accumulator, self[i])
      i += 1
    end

    accumulator
  end
end

class Hash

  def my_each(&prc)
    keys.each do |k|
      prc.call(k, self[k])
    end
  end

end
