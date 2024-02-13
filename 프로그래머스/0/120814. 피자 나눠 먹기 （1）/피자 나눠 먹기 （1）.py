def solution(n):
    if n%7 == 0 and n>7:
        return n//7
    elif n%7 != 0 and n>7:
        return n//7+1
    else:
        return 1