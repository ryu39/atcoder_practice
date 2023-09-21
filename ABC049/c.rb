WORDS = %w[dream erase dreamer eraser]

S = gets.chomp

def check_recursive(str)
  WORDS.each do |w|
    str << w
    if str == S
      puts 'YES'
      exit
    elsif S.start_with?(str)
      check_recursive(str)
    end
    str.delete_suffix!(w)
  end
end

check_recursive('')

puts 'NO'
