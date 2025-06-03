def solution(n, lost, reserve):    
    reserve_set = list(set(reserve) - set(lost))
    lost_set = list(set(lost) - set(reserve))
                
    answer = n-len(lost_set)
    reserved = [False for i in range(len(reserve_set))]

    for i in lost_set:
        for j in range(len(reserve_set)):
            if reserve_set[j]-1 <= i <= reserve_set[j]+1:
                if not reserved[j]:
                    answer += 1
                    reserved[j] = True
                    break
    
    return answer