import string

def solution(s, skip, index):
    answer = ''
    low = string.ascii_lowercase
    
    for i in skip:
        print(i)
        low = low.replace(i,'')

    for j in s:
        idx = (low.index(j) + index) % len(low)
        answer += low[idx]

    return answer
