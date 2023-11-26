N, L, R = gets.chomp.split(' ').map(&:to_i)
a_list = gets.chomp.split(' ').map(&:to_i)

result = a_list.map do |a|
  if a <= L
    L
  elsif a >= R
    R
  else
    a
  end
end

puts result.join(' ')
