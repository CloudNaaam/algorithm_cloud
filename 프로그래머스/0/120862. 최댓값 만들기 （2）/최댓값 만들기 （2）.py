def solution(numbers):
    answer = -100000000000
    
    for i in range(len(numbers)):
        for j in range(i,len(numbers)):
            if i != j:
                answer = numbers[i] * numbers[j] if answer < numbers[i] * numbers[j] else answer
                
    return answer