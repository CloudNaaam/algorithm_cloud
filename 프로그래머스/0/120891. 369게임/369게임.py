def solution(order):
    answer = 0
    
    for i in str(order):
        answer = answer + 1 if i == '3' or i == '6' or i == '9' else answer
        
    return answer