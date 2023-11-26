N, X = gets.chomp.split(' ').map(&:to_i)
s_list = gets.chomp.split(' ').map(&:to_i)

puts s_list.select { |s| s <= X }.sum
