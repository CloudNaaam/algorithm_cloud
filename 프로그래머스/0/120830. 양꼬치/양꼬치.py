def solution(n, k):
    answer = 0
    service = 0
    
    answer += n*12000
    if n >= 10:
        service = n // 10
        
    answer += (k-service)*2000
    
    return answer 