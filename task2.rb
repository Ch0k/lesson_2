#5. Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может 
#быть високосным. (Запрещено использовать встроенные в ruby методы для этого вроде 
#Date#yday или Date#leap?) Алгоритм опредления високосного года: www.adm.yar.ru
array = [31,28,31,30,31,30,31,31,30,31,30,31]
s = 0
d = 0
m = 0
loop do
  puts 'Введите день'
  d = gets.chomp.to_i
  puts 'Введите Месяц'
  m = gets.chomp.to_i
  break if (d < array[m-1])
end
puts 'Введите год'
y = gets.chomp.to_i
if (y % 4 == 0 && y % 100 != 0) || (y % 100 == 0 && y % 400 == 0)
  puts 'Високосный'
  for i in 0..(m-2)
    if i == 1 
      array[1] = 29
    end 
    s = s + array[i]
    puts "Дней в месяце #{i+1} #{array[i]}"
    puts "Промежуточная сумма #{s}"
  end
  s = s + d
  puts s
else
  puts 'Не Високосный'
  for i in 0..(m-2)
    s = s + array[i] 
    puts "Дней в месяце #{i+1} #{array[i]}"
    puts "Промежуточная сумма #{s}"
  end
  s = s + d
  puts s
end