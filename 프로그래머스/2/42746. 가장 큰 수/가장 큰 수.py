def solution(numbers):
    answer = ''
    numbers = sorted(numbers, key=lambda x:str(x)*4, reverse=True)
    
    for i in numbers:
        answer += str(i)
        
    return '0' if answer[0] == '0' and answer[1] == '0' else answer