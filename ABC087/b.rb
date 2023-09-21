A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

result = 0
(A+1).times do |a|
  (B+1).times do |b|
    (C+1).times do |c|
      total = 500 * a + 100 * b + 50 * c
      result += 1 if total == X
    end
  end
end

puts result
