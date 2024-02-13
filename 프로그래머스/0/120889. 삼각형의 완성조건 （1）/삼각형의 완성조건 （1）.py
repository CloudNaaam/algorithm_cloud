def solution(sides):
    answer = 0
    sides.sort(reverse=True)
    
    if sides[0] < sides[1]+sides[2]:
        return 1
    elif sides[0] == sides[1] and sides[1] == sides[2]:
        return 1
    else:
        return 2