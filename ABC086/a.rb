a, b = gets.chomp.split(' ').map(&:to_i)

if a.odd? && b.odd?
  puts 'Odd'
else
  puts 'Even'
end
