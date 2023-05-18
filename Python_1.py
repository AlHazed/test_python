import re

s = input('Введите строку: ')

numbers = re.sub(r"[^0-9|\\| ]", "", s).split()

for spec_num in numbers:
    if '\\' in spec_num:  
        if len(spec_num) == 10 and spec_num.index('\\') == 4:
            print(spec_num)
        else:     
            if spec_num.index('\\') < 4:
                while spec_num.index('\\') < 4:
                    spec_num = '0' + spec_num
            
            if spec_num.index('\\') == 4: 
                while len(spec_num) < 10:
                    spec_num = spec_num[:5] + '0' + spec_num[5:]
           
            if len(spec_num) == 10 and spec_num.index('\\') == 4:            
                print(spec_num)