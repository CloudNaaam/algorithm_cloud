def solution(i, j, k):
    answer = 0
    
    for number in range(i,j+1):
        number = str(number)
        for j in number:
            if int(j) == k:
                answer +=1
                
    return answer
        