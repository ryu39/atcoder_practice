N, L = gets.chomp.split(' ').map(&:to_i)
a_list = gets.chomp.split(' ').map(&:to_i)

passed = a_list.count { |a| a >= L }

puts passed
