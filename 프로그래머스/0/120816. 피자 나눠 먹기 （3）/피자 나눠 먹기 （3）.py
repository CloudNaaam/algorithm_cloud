def solution(slice, n):
    answer = 0
    
    if slice < n:
        answer = n // slice if n % slice == 0 else (n // slice) + 1
    else:
        answer = 1

    return answer