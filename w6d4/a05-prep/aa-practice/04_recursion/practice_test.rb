# Write a method, `digital_root(num)`. It should Sum the digits of a positive
# integer. If it is greater than 10, sum the digits of the resulting number.
# Keep repeating until there is only one digit in the result, called the
# "digital root". **Do not use string conversion within your method.**
#
# You may wish to use a helper function, `digital_root_step(num)` which performs
# one step of the process.

def digital_root(num)
  while num > 10
    num = digital_root_step(num)
  end
  num
end

def digital_root_step(num)
  root = 0
  while num > 0
    root += num % 10
    num /= 10
  end
  root
end

#returns all subsets of an array
def subsets(array)
  return [[]] if array.empty?
  prev = subsets(array[0..-2])
  prev + prev.map { |el| el += [array.last] }
end

# make better change problem from class
# make_better_change(24, [10,7,1]) should return [10,7,7]
# make change with the fewest number of coins

# To make_better_change, we only take one coin at a time and
# never rule out denominations that we've already used.
# This allows each coin to be available each time we get a new remainder.
# By iterating over the denominations and continuing to search
# for the best change, we assure that we test for 'non-greedy' uses
# of each denomination.

def make_better_change(value, coins)

  # make_better_change(value, coins)
end

# Using recursion and the is_a? method,
# write an Array#deep_dup method that will perform a "deep" duplication of the interior arrays.

def deep_dup(arr)
  return arr.first if arr.length <= 1
  dupped = []
  arr.each do |el|
    if el.is_a?(Array)
      dupped << deep_dup(el)
    else
      dupped << el
    end
  end
  dupped
end

# Write a recursive method that returns the sum of all elements in an array
def rec_sum(nums)
  return 0 if nums.empty?
  nums.first + rec_sum(nums[1..-1])
end

# Implement a method that finds the sum of the first n
# fibonacci numbers recursively. Assume n > 0
def fibs_sum(n)
  return 0 if n == 0
  return 1 if n == 1
  fibs_sum(n - 1) + fibs_sum(n - 2) + 1
end


# Write a recursive function that returns the prime factorization of
# a given number. Assume num > 1
#
# prime_factorization(12) => [2,2,3]
def prime_factorization(num)

end

def is_prime?(num)
  (2...num).none? { |factor| (num % factor).zero? }
end

# Write a recursive method that returns all of the permutations of an array
def permutations(array)
end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1] if num == 1
  prev = factorials_rec(num - 1)
  prev + [prev.last * (num - 1)]
end

# Write a recursive method that takes in a string to search and a key string.
# Return true if the string contains all of the characters in the key
# in the same order that they appear in the key.
#
# string_include_key?("cadbpc", "abc") => true
# string_include_key("cba", "abc") => false
def string_include_key?(string, key)
  return true if key.length.zero?
  next_key = key[0]
  key_idx = string.index(next_key)

  return false if key_idx.nil?
  string_include_key?(string[key_idx+1..-1], key[1..-1])
end

# Write a recursive method that takes in a base 10 number n and
# converts it to a base b number. Return the new number as a string
#
# E.g. base_converter(5, 2) == "101"
# base_converter(31, 16) == "1f"

def base_converter(num, b)
  return "" if num.zero?
  digits = (0..9).to_a + ("a".."f").to_a
  base_converter(num/b, b) + digits[num%b]
end

# CHALLENGE: Eight queens puzzle precursor
#
# Write a recursive method that generates all 8! possible unique ways to
# place eight queens on a chess board such that no two queens are in
# the same board row or column (the same diagonal is OK).
#
# Each of the 8! elements in the return array should be an array of positions:
# E.g. [[0,0], [1,1], [2,2], [3,3], [4,4], [5,5], [6,6], [7,7]]
#
# My solution used 3 method parameters: current_row, taken_columns, and
# positions so far
def eight_queens_possibilities(current_row, taken_columns, positions)

end

# return the sum of the first n even numbers recursively. Assume n > 0
def first_even_numbers_sum(n)
  return 2 if n == 1
  2 * n + first_even_numbers_sum(n - 1)
end

# return b^n recursively. Your solution should accept negative values
# for n
def exponent(b, n)
  if n > 0
    b * exponent(b, n - 1)
  elsif n < 0
    1.fdiv(b) * exponent(b, n + 1)
  else
    return 1
  end
end
