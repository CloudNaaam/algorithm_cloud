def solution(answers):
    result = []
    first = [1, 2, 3, 4, 5]
    second = [2, 1, 2, 3, 2, 4, 2, 5]
    third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    f=0
    s=0
    t=0
    
    for i in range(len(answers)):
        if answers[i] == first[i%len(first)]:
            f += 1
        if answers[i] == second[i%len(second)]:
            s += 1
        if answers[i] == third[i%len(third)]:
            t += 1
    if max(f,s,t) == f:
        result.append(1)
    if max(f,s,t) == s:
        result.append(2)
    if max(f,s,t) == t:
        result.append(3)
    print(f,s,t)
    return result