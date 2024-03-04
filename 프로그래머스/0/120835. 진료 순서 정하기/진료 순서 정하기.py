def solution(emergency):
    answer = emergency.copy()
    emergency.sort(reverse=True)
    
    for i in range(len(answer)):
        answer[i] = emergency.index(answer[i])+1
        
    return answer