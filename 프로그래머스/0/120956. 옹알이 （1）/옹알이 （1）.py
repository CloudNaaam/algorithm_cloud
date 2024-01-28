def solution(babbling):
    answer = 0
    words = ['aya','ye','woo','ma']
    
    for i in babbling:
        for j in words:
            i = i.replace(j,' ')
        print(i)
        i = i.replace(' ','')
        if i == '':
            answer += 1
            
                
    return answer