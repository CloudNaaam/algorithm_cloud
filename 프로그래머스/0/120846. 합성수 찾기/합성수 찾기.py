def solution(n):
    answer = 0
    cnt = 0
    
    for i in range(1,n+2):
        answer = answer + 1 if cnt >= 3 else answer
        cnt = 0
        for j in range(1,i+2):
            cnt = cnt + 1 if i % j == 0 else cnt
    
    return answer

# j의 제곱근까지만 확인하면 더 빠르게 가능