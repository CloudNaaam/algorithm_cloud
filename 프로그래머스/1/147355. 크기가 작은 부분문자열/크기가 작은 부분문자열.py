def solution(t, p):
    answer = 0
    num_list = []
    
    for i in range(len(t)):
        thr_num = ''
        for j in range(i,len(t)):
            thr_num += t[j]
            if len(thr_num) == len(p):
                num_list.append(thr_num)
                break
    for i in num_list:
        if int(p) >= int(i):
            answer += 1
    
    
    return answer