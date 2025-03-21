def solution(n, m, section):
    answer = 0
    area = 0
    index = 0
    
    if m > 1:
        while len(section) >= 1:
            area = m + section[index]
            # print(area,section)
            for i in section[:]:
                if i < area:
                    section.remove(i)
                else:
                    break
            answer += 1
        return answer
    else:
        return len(section)