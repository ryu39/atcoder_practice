N = gets.to_i
a_list = gets.chomp.split(' ').map(&:to_i)

max = a_list.max

next_max = 0
a_list.each do |a|
  if a != max && a > next_max
    next_max = a
  end
end

puts next_max
