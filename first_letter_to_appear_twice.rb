arr = "abccbaacz"

def first_letter_appear_twice_index_wise(arr)
  arr.each_char.with_index do |char, index|
    if arr.index(char) != index 
      return char
    end
  end
end

# puts first_letter_appear_twice_index_wise(arr)

# method 2
def first_letter_appear_twice_using_hash(arr)
  hash = {}
  arr.each_char.with_index do |ch, index|
    hash.key?(ch) ? return ch : hash[ch] = index
  end
end

puts first_letter_appear_twice_using_hash(arr)