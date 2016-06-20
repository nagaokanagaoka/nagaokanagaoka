sum = o
(0...5).each do |i|
  puts '数字を入力してください'
  num = gets.chomp.to_i
  sum = sum + num
end
