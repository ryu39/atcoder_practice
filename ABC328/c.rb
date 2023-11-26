N, Q = gets.chomp.split(' ').map(&:to_i)
S = gets.chomp

SS = Array.new(N-1) { 0 }
(0..N-1).each do |i|
  if S[i] == S[i+1]
    SS[i] = 1
  end
end

answers = []
questions = Q.times do
  l, r = gets.chomp.split(' ').map(&:to_i)
  SS[l..r-1].sum
  answers << count
end

answers.each { |ans| puts ans }
