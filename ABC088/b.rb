N = gets.to_i
a_list = gets.chomp.split(' ').map(&:to_i)

alice_sum = 0
bob_sum = 0

a_list.sort.reverse.each_with_index do |n, i|
  if i.even?
    alice_sum += n
  else
    bob_sum += n
  end
end

puts alice_sum - bob_sum
