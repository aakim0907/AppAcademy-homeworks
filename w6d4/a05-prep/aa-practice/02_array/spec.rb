require 'rspec'
require_relative 'practice_test'

describe "#primes" do

  it "returns first five primes in order" do
    expect(primes(5)).to eq([2, 3, 5, 7, 11])
  end

  it "returns an empty array when asked for zero primes" do
    expect(primes(0)).to eq([])
  end
end

describe "#dups" do
  it "solves a simple example" do
    expect([1, 3, 0, 1].dups).to eq({ 1 => [0, 3] })
  end

  it "finds two dups" do
    expect([1, 3, 0, 3, 1].dups).to eq({ 1 => [0, 4], 3 => [1, 3] })
  end

  it "finds multi-dups" do
    expect([1, 3, 4, 3, 0, 3].dups).to eq({ 3 => [1, 3, 5] })
  end

  it "returns {} when no dups found" do
    expect([1, 3, 4, 5].dups).to eq({})
  end
end

describe "my_merge" do
  a = {a: 1, b: 2, c: 3}
  b = {d: 4, e: 5}
  c = {c: 33, d: 4, e: 5}

  it "Merges 2 hashes and returns a hash" do
      expect(a.my_merge(b)).to eq(a.merge(b))
  end

  it "Priortizes values from the hash being merged in" do
      expect(a.my_merge(c)).to eq(a.merge(c))
  end
end

describe "my_flatten" do
  it 'Flattens arrays correctly' do
    expect([1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten).to eq([1, 2, 3, 4, 5, 6, 7, 8])
  end
end

describe "my_controlled_flatten" do
  it "Flattens an array the specified number of levels" do
    expect([1,[2,3], [4,[5]], [[6,[7]]]].my_controlled_flatten(1)).to eq([1,2,3,4,[5], [6, [7]]])
  end
end

describe "#median" do
  let(:even_array) { [3, 2, 6, 7] }
  let(:odd_array) { [3, 2, 6, 7, 1] }

  it "returns nil for the empty array" do
    expect([].median).to be_nil
  end

  it "returns the element for an array of length 1" do
    expect([1].median).to eq(1)
  end

  it "returns the median of an odd-length array" do
    expect(odd_array.median).to eq(3)
  end

  it "returns the median of an even-length array" do
    expect(even_array.median).to eq(4.5)
  end
end

describe "my_bsearch" do

  it "finds the first element in the array" do
    expect([1, 2, 3].my_bsearch(1)).to eq(0)
  end

  it "finds an element for an array with an even number of elements" do
    expect([2, 3, 4, 5].my_bsearch(3)).to eq(1)
  end

  it "finds an element for an array with an odd number of elements" do
    expect([2, 4, 6, 8, 10].my_bsearch(6)).to eq(2)
  end

  it "finds an element in the second half of the array (even)" do
    expect([1, 3, 4, 5, 9].my_bsearch(5)).to eq(3)
  end

  it "finds an element in the second half of the array (odd)" do
    expect([1, 2, 3, 4, 5, 6].my_bsearch(6)).to eq(5)
  end

  it "Returns nil if the element is not in the array (smaller)" do
    expect([1, 2, 3, 4, 5, 6].my_bsearch(0)).to eq(nil)
  end

  it "Returns nil if the element is not in the array (bigger)" do
    expect([1, 2, 3, 4, 5, 7].my_bsearch(6)).to eq(nil)
  end

end

describe "my_rotate" do
  a = [ "a", "b", "c", "d" ]

  it "Rotates the elements 1 position if no argument is passed in" do
    expect(a.my_rotate).to eq(["b", "c", "d", "a"])
  end

  it "Rotates the elements correctly if an argument is passed in" do
    expect(a.my_rotate(2)).to eq(["c", "d", "a", "b"])
  end

  it "Rotates the elements correctly if a negative argument is passed in" do
    expect(a.my_rotate(-3)).to eq(["b", "c", "d", "a"])
  end

  it "Rotates the elements correctly for a large argument" do
    expect(a.my_rotate(15)).to eq(["d", "a", "b", "c"])
  end

end

describe "my_reverse" do
  a = [ "a", "b", "c", "d" ]

  it "Reverses an array" do
    expect(a.my_reverse).to eq(a.reverse)
  end
end

describe "#two_sum" do
  it "returns positions of pairs of numbers that add to zero" do
    expect([5, 1, -7, -5].two_sum).to eq([[0, 3]])
  end

  it "finds multiple pairs" do
    expect([5, -1, -5, 1].two_sum).to eq([[0, 2], [1, 3]])
  end

  it "finds pairs with same element" do
    expect([5, -5, -5].two_sum).to eq([[0, 1], [0, 2]])
  end

  it "returns [] when no pair is found" do
    expect([5, 5, 3, 1].two_sum).to eq([])
  end

  it "won't find spurious zero pairs" do
    expect([0, 1, 2, 3].two_sum).to eq([])
  end

  it "will find real zero pairs" do
    expect([0, 1, 2, 0].two_sum).to eq([[0, 3]])
  end
end

describe "#factors" do
  it "returns the factors of 10 in order" do
    expect(factors(10)).to eq([1, 2, 5, 10])
  end

  it "returns just two factors for primes" do
    expect(factors(13)).to eq([1, 13])
  end
end

describe "my_join" do
  a = [ "a", "b", "c", "d" ]

  it "Joins an array if no argument is passed" do
    expect(a.my_join).to eq("abcd")
  end

  it "Joins an array if an argument is passed" do
    expect(a.my_join("$")).to eq("a$b$c$d")
  end
end

