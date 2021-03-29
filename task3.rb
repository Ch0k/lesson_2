hash = Hash.new
cart = 0
loop do
  puts 'Введите товар'
  t = gets.chomp.to_sym
  break if t == 'stop'.to_sym
  puts 'Введите кол-во'
  q = gets.chomp.to_i
  puts 'Введите цену'
  f = gets.chomp.to_i
  hash[t] = { "quantity".to_sym => q, "price".to_sym => f}
  s = hash[t][:quantity] * hash[t][:price]
  cart = cart + s
end
puts hash
hash.each do |key, value|
  line_items = value[:price] * value[:quantity] 
  puts "#{key} = #{line_items}"
end
puts "cart = #{cart}"
