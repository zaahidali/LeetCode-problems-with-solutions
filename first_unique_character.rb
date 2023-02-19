# s = "loveleetcode"
# s = 'leetcode'
# s = 'lleettcoodeecd'
s = 'loveleetcode'

# solution 1
def first_uniq_character(arr)
  arr.each_char do |ch|
    if arr.count(ch) == 1
      return ch
    end
  end
  -1
end

# solution 2
def first_uniq_char(s)
  
  hash = Hash.new(0)

  s.each_char{ |ch| hash[ch] += 1 }

  s.each_char.with_index { |ch, index| return index if hash[ch] == 1}

  -1
end

puts first_uniq_char(s)