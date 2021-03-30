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
hash.each do |month, days|
  puts month if days == 30 
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

array2 = [0,1]
s = 0
while s < 100
  s = array2[-2] + array2[-1]
  if s < 100
    array2.push(s)
  end
end
print array2

#4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
#array3 = ['a','е','ё','и','о','у','ы','э','ю','я']
array3 = ['a','e','i','o','u','y']
array4 = ('a'..'z').to_a
hash = {}
i = 0
for i in i..array3.length
  hash[array3[i]] = array4.index(array3[i])+1 if array4.include?(array3[i]) 
end
print hash
