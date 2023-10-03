str1 = str(input("Enter the string: "))
count = 0
for el in str1:
    if el.isupper():
        count = count + 1
print("Count of upper case: ", count)
