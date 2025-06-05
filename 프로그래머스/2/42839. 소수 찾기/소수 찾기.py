from itertools import permutations

def is_sosu(number):
    if number == 2:
        return True
    
    for i in range(2,int(number ** 0.5)+1):
        a = number % i
        if a == 0:
            return False
    return True

def solution(numbers):
    answer = 0
    a = set()
    
    for i in range(1,len(numbers)+1):
        for p in permutations(numbers, i):
            b = int(''.join(p))
            a.add(b)
            
    for j in a:
        if j <= 1:
            continue
        if is_sosu(j):
            answer += 1
    
    return answer