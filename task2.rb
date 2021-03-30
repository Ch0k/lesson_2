#5. Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может 
#быть високосным. (Запрещено использовать встроенные в ruby методы для этого вроде 
#Date#yday или Date#leap?) Алгоритм опредления високосного года: www.adm.yar.ru
days = [31,28,31,30,31,30,31,31,30,31,30,31]
s = 0
day = 0
month = 0
loop do
  puts 'Введите день'
  day = gets.chomp.to_i
  puts 'Введите Месяц'
  month = gets.chomp.to_i
  break if (day < days[month-1])
end
puts 'Введите год'
year = gets.chomp.to_i
if (year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0)
  puts 'Високосный'
  days[1] = 29
else
  puts 'Не Високосный'
end
s = days.take(month-1).sum 
puts s + day