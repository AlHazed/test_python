n = int(input('Введите начальное количество банкоматов: '))
k = int(input('Введиче количество добавляемых банкоматов: '))
l = [0] * n
i = 0
while i < n:
    l[i] = int(input('Введите дистанцию между банкоматами ' + str(i + 1) + ' и '+ str(i + 2) +': '))
    i += 1 

while len(l) != n+k:
    new_val = int(max(l)/2)
    max_ind = l.index(max(l))
    l[max_ind] = new_val
    l.insert(max_ind+1, new_val)
    
print(l)
