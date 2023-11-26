N, M = gets.chomp.split(' ').map(&:to_i)
S = gets.chomp
T = gets.chomp

def check(target, stamp, i)
  (0..(M-1)).each do |j|

  end
end

checked = Array.new(N) { false }
queue = []

possible_i = []
(0..N-1-(M-1)).each do |i|
  if S[i..i+(M-1)] == T
    checked[i] = true
    possible_i << i
  end
end

while !possible_i.empty?
  i = possible_i.shift

  (i..i+(M-1)).each do |j|
    S[j] = '#'
  end
  # S[i..i+(M-1)] = sharp_stamp

  # check new possible indexes
  ([i-(M-1), 0].max..[i+(M-1), N-1-(M-1)].min).each do |j|
    next if checked[j]

    new_possible_i = true
    (j..j+(M-1)).each.with_index do |k, idx|
      if S[k] == T[idx] || S[k] == '#'
        next
      else
        new_possible_i = false
        break
      end
    end

    if new_possible_i
      checked[j] = true
      possible_i << j
    end
  end
end

if S.chars.all? { |ch| ch == '#' }
  puts 'Yes'
else
  puts 'No'
end
