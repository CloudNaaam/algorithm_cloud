def solution(nums):
    from itertools import combinations as cb
    
    answer = 0
    
    for i in cb(nums,3):
        cs = sum(i)
        for j in range(2,cs):
            if cs % j == 0:
                break
        else:
            answer += 1
        
    return answer 