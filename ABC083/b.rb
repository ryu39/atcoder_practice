N, A, B = gets.chomp.split(' ').map(&:to_i)

def sum_each_digit(n)
  sum = 0
  loop do
    sum += n % 10
    n /= 10
    break if n == 0
  end
  sum
end

sum = 0
range = (A..B)
(1..N).each do |n|
  sum += n if range.include?(sum_each_digit(n))
end

puts sum
