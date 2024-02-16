def solution(numbers):
    answer = -100000000000
    
    for i in range(len(numbers)):
        for j in range(i,len(numbers)):
            if i != j:
                answer = numbers[i] * numbers[j] if answer < numbers[i] * numbers[j] else answer
                
    return answer

# 이 생각을 왜 못했을까..
# numbers = sorted(numbers)
# return max(numbers[0] * numbers[1], numbers[-1]*numbers[-2])