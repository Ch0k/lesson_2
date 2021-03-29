hash = {
  january:    31, 
  february:   28, 
  march:      31, 
  april:      30, 
  may:        31, 
  june:       30, 
  july:       31, 
  august:     31,  
  september:  30, 
  october:    31, 
  november:   30, 
  december:   31
}
hash.each do |key, value|
  if value == 30
    puts key
  end
end

# 2. Заполнить массив числами от 10 до 100 с шагом 5
#counter = 10
#while counter < 11
 # puts counter
  #counter = counter + 1
#end
array = []
i = 10
while i <= 100
  array.push(i)
  i = i + 5
end
print array

#3. Заполнить массив числами фибоначчи до 100

array2 = []
i = 2
x = 0
y = 1
array2.push(x)
array2.push(y)
s = 0
while s < 100
  s = array2[i - 2] + array2[i - 1]
  if s < 100
    array2.push(s)
  i += 1
  end
end
print array2

#4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
hash2 = {
  а: 1,
  е: 2,
  ё: 3,
  и: 4,
  о: 5,
  у: 6,
  ы: 7,
  э: 8,
  ю: 9,
  я: 10 	
}
print hash2
