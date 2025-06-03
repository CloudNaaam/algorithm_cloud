def solution(N, stages):
    answer = []
    ganeungseong_dic = {i: 0 for i in range(1, N+1)}
    
    for i in range(1,N+1):
        fail = 0
        challenger = 0
        ganeungseong = 0
        for j in stages:
            if j > i:
                challenger += 1
            elif j == i:
                challenger += 1
                fail += 1
                
        ganeungseong = fail/challenger if fail > 0 and challenger > 0 else 0
        ganeungseong_dic[i] = ganeungseong
        
    d = sorted(ganeungseong_dic.items(), key=lambda x: x[1], reverse=True)
    print(d)
    
    for i in d:
        answer.append(i[0])
        
    return answer