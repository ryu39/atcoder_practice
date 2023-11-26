N = gets.to_i
S = gets.chomp

count_map = ('a'..'z').to_a.map { |c| [c, 0] }.to_h

current_char = nil
char_count = 0
(0..N-1).each do |i|
  if S[i] != current_char
    current_char = S[i]
    char_count = 1
  else
    char_count += 1
  end

  if count_map[current_char] < char_count
    count_map[current_char] = char_count
  end
end

puts count_map.values.sum
