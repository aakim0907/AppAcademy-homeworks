class String

  # Write a String#symmetric_substrings method that returns an array of substrings
  # that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  def symmetric_substrings
    symmetrics = []
    length.times do |i|
      n = 2
      until i + n >= length
        subs = self[i..i+n]
        symmetrics << subs if subs == subs.reverse
        n += 1
      end
    end
    symmetrics
  end
end

# Back in the good old days, you used to be able to write a darn near
# uncrackable code by simply taking each letter of a message and incrementing it
# by a fixed number, so "abc" by 2 would look like "cde", wrapping around back
# to "a" when you pass "z".  Write a function, `caesar_cipher(str, shift)` which
# will take a message and an increment amount and outputs the encoded message.
# Assume lowercase and no punctuation. Preserve spaces.
#
# To get an array of letters "a" to "z", you may use `("a".."z").to_a`. To find
# the position of a letter in the array, you may use `Array#find_index`.

def caesar_cipher(str, shift)
  words = str.split(" ")
  words.map { |wrd| cipher(wrd, shift) }.join(" ")
end

def cipher(str, shift)
  alph = ("a".."z").to_a
  org_idx = str.chars.map { |ch| alph.index(ch) }
  map_idx = org_idx.map { |el| (el + shift) % 26 }
  new_str = map_idx.map { |el| alph[el] }.join
  new_str
end

# Write a method that translates a sentence into pig latin. You may want a helper method.
# 'apple' => 'appleay'
# 'pearl' => 'earlpay'
# 'quick' => 'ickquay'
def pig_latinify(sentence)
  words = sentence.split(" ")
  words.map { |wrd| convert_piglatin(wrd) }.join(" ")
end

def convert_piglatin(wrd)
characters = wrd.chars
  characters.each_with_index do |ch, idx|
    if is_vowel?(ch)
      return "#{wrd[idx..-1]}#{wrd[0...idx]}ay"
      break
    end
  end
end

def is_vowel?(ch)
  %w(a e i o).include?(ch)
end

class String
  # Returns an array of all the subwords of the string that appear in the
  # dictionary argument. The method does NOT return any duplicates.

  def real_words_in_string(dictionary)
    subwords.select { |wrd| dictionary.include?(wrd) }
  end

  def subwords
    subs = []
    length.times do |i1|
      (i1...length).each do |i2|
        subs << self[i1..i2]
      end
    end
    subs.uniq
  end
end

# Write a method that capitalizes each word in a string like a book title
# Do not capitalize words like 'a', 'and', 'of', 'over' or 'the'
def titleize(title)
  exceptions = %w(a and of over the)
  words = title.split(" ")
  titleized = words.map.with_index do |wrd, i|
    if i != 0 && exceptions.include?(wrd)
      wrd
    else
      wrd.capitalize
    end
  end
  titleized.join(" ")
end
