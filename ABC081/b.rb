N = gets.to_i
an = gets.chomp.split(' ').map(&:to_i)

b = 0
loop do
  break if an.any?(&:odd?)

  an = an.map { |a| a / 2 }
  b += 1
end

puts b
