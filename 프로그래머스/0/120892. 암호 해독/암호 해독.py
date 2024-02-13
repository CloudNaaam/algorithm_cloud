def solution(cipher, code):
    answer = ''
    
    for i in range(code-1,len(cipher),code):
        answer += cipher[i]
        
    return answer

#    answer = cipher[code-1::code]
#    return answer
# 기발하다.. 이것도 알아두자