def solution(num, k):
    for i in str(num):
        if int(i) == k:
            print(i)
            return str(num).index(i)+1
    return -1