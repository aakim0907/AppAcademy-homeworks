class Stack #LIFO
  def initialize
    # create ivar to store stack here!
    @ivar = []
  end

  def add(el)
    # adds an element to the stack
    @ivar << el
  end

  def remove
    # removes one element from the stack
    @ivar.pop
  end

  def show
    # return a copy of the stack
    @ivar
  end
end

class Queue #FIFO
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    matching_idx = @map.index { |el| el[0] == key }
    matching_idx ? @map[matching_idx][1] = value : @map << [key, value]
  end

  def lookup(key)
    @map.each { |el| return el[1] if el[0] == key }
  end

  def remove(key)
    @map.reject! { |el| el[0] == key }
  end

  def show
    @map
  end

end
