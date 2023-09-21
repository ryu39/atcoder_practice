N = gets.to_i
d_list = []
N.times do
  d_list << gets.to_i
end

puts d_list.uniq.length
