n = int(input('Введите число строк в списке: '))
i = 0
l = [''] * n
while i < n:
    l[i] = input('Введите строку с цифрами: ')
    i += 1

res = sorted(l, reverse=True, key = lambda num: [int(i) for i in str(num)])

print("".join(res))