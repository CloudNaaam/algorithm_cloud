def solution(n):
    st = str(n)
    answer = 0
    
    for i in st:
        answer += int(i)
    
    return answer